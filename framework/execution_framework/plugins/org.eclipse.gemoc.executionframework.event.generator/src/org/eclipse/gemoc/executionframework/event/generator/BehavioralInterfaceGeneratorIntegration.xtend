/*******************************************************************************
 * Copyright (c) 2016, 2017 Inria and others.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 *
 * Contributors:
 *     Inria - initial API and implementation
 *******************************************************************************/
package org.eclipse.gemoc.executionframework.event.generator

import java.io.IOException
import java.util.Map
import opsemanticsview.OperationalSemanticsView
import org.eclipse.core.resources.IFile
import org.eclipse.core.resources.IResource
import org.eclipse.core.resources.ResourcesPlugin
import org.eclipse.core.resources.WorkspaceJob
import org.eclipse.core.runtime.CoreException
import org.eclipse.core.runtime.IProgressMonitor
import org.eclipse.core.runtime.IStatus
import org.eclipse.core.runtime.Platform
import org.eclipse.core.runtime.Status
import org.eclipse.emf.common.util.URI
import org.eclipse.emf.ecore.EOperation
import org.eclipse.emf.ecore.resource.Resource
import org.eclipse.emf.ecore.resource.impl.ResourceSetImpl
import org.eclipse.gemoc.dsl.Dsl
import org.eclipse.gemoc.opsemanticsview.gen.OperationalSemanticsViewGenerator
import org.eclipse.jdt.core.IMethod

/**
 * Plenty of ways to call the generator in an eclipse context.
 * Relies on a OperationalSemanticsViewGenerator found using an extension point.
 */
class BehavioralInterfaceGeneratorIntegration {

	static def void generateAddon(IFile dslFile, String selectedLanguage, String basePluginName, boolean replace,
		IProgressMonitor monitor) {

		// Loading
		val selection = loadDsl(dslFile)

		// We find all extension points
		val configNew = Platform.getExtensionRegistry().getConfigurationElementsFor(
			"org.eclipse.gemoc.opsemanticsview.gen");

		// Using them, we instantiate objects and look for one that can work with the current selected language 
		val OperationalSemanticsViewGenerator validViewGenerator = configNew.map [ e |
			e.createExecutableExtension("class")
		].filter(OperationalSemanticsViewGenerator).findFirst [ conf |
			conf.canHandle(selection, dslFile.project)
		]

		// If we find one, we generate
		if (validViewGenerator !== null) {
			val OperationalSemanticsView mmextension = validViewGenerator.generate(selection, dslFile.project);
			generateAddon(selectedLanguage, basePluginName, replace, monitor, mmextension, validViewGenerator.operationToMethod)

		} // Otherwise, we error
		else {
			throw new CoreException(
				new Status(
					Status.
						ERROR,
					"org.eclipse.gemoc.trace.gemoc.generator",
					"Impossible to create a trace addon: couldn't find an opsemanticsview generator that can manage the chosen melange language."
				));
		}

	}

	/**
	 * Central operation of the class, that calls business operations
	 */
	public static def void generateAddon(String mmName, String basePluginName, boolean replace, IProgressMonitor monitor,
		OperationalSemanticsView executionExtension, Map<EOperation, IMethod> operationToMethod) throws CoreException {

		// We look for an existing project with this name
		#[
			ResourcesPlugin.getWorkspace().getRoot().getProject(basePluginName + ".event"),
			ResourcesPlugin.getWorkspace().getRoot().getProject(basePluginName + ".eventinterpreter")
		].forEach[p|
			if (p.exists()) {
				// If we replace, we delete most of its content
				// (we keep the original project in order to be able to replace the project even if it was imported in the workspace)
				if (replace) {
					// existingProject.delete(true, monitor);
					val WorkspaceJob job = new WorkspaceJob("deleting project " + p.name + " content") {
						override public IStatus runInWorkspace(IProgressMonitor monitor) throws CoreException {
							for (IResource iRes : p.members) {
								if (!(iRes.name.equals(".project") || iRes.name.equals(".classpath"))) {
									iRes.delete(true, monitor);
								}
							}
							return Status.OK_STATUS;
						}
					};
					job.setRule(p);
					job.schedule();
				} // Else, error
				else {
					throw new CoreException(
						new Status(Status.ERROR, "org.eclipse.gemoc.executionframework.event.generator",
							"Impossible to create the behavioral interface: at least one project already exists with this name."));
				}
			}
		]
		
		try {
			// Then we call all our business operations
			// TODO handle languages defined with multiple ecores
			val EventMetamodelGenerator eventMetamodelGenerator = new EventMetamodelGenerator(executionExtension, basePluginName)
			val EventInterpreterGenerator eventInterpreterGenerator = new EventInterpreterGenerator(executionExtension, operationToMethod, basePluginName)
			eventMetamodelGenerator.generateBehavioralInterface
			eventInterpreterGenerator.generateEventInterpreter
		} catch (IOException e) {

			// TODO Do real error handling
			e.printStackTrace();
		}
	}
	
	protected static def Dsl loadDsl(IFile dslFile) {
		val Resource res = (new ResourceSetImpl()).getResource(URI.createURI(dslFile.getFullPath().toOSString()), true);
		val Dsl dsl = res.getContents().get(0) as Dsl;
		return dsl
	}

}