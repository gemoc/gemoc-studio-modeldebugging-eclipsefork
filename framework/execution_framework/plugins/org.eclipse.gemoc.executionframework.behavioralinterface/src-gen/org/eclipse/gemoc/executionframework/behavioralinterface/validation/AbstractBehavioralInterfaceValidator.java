/*
 * generated by Xtext 2.24.0
 */
package org.eclipse.gemoc.executionframework.behavioralinterface.validation;

import java.util.ArrayList;
import java.util.List;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.xtext.xbase.validation.XtypeValidator;

public abstract class AbstractBehavioralInterfaceValidator extends XtypeValidator {
	
	@Override
	protected List<EPackage> getEPackages() {
		List<EPackage> result = new ArrayList<EPackage>(super.getEPackages());
		result.add(org.eclipse.gemoc.executionframework.behavioralinterface.behavioralInterface.BehavioralInterfacePackage.eINSTANCE);
		result.add(EPackage.Registry.INSTANCE.getEPackage("http://www.eclipse.org/xtext/common/JavaVMTypes"));
		result.add(EPackage.Registry.INSTANCE.getEPackage("http://www.eclipse.org/xtext/xbase/Xtype"));
		return result;
	}
}
