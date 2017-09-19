/**
 */
package org.eclipse.gemoc.executionframework.event.model.scenario;

import org.eclipse.emf.common.util.EList;

import org.eclipse.emf.ecore.EObject;

import org.eclipse.gemoc.executionframework.event.model.property.Property;

/**
 * <!-- begin-user-doc -->
 * A representation of the model object '<em><b>Arbiter State</b></em>'.
 * <!-- end-user-doc -->
 *
 * <p>
 * The following features are supported:
 * </p>
 * <ul>
 *   <li>{@link org.eclipse.gemoc.executionframework.event.model.scenario.ArbiterState#getIncomingTransitions <em>Incoming Transitions</em>}</li>
 *   <li>{@link org.eclipse.gemoc.executionframework.event.model.scenario.ArbiterState#getOutgoingTransitions <em>Outgoing Transitions</em>}</li>
 *   <li>{@link org.eclipse.gemoc.executionframework.event.model.scenario.ArbiterState#getTruthValue <em>Truth Value</em>}</li>
 *   <li>{@link org.eclipse.gemoc.executionframework.event.model.scenario.ArbiterState#getName <em>Name</em>}</li>
 * </ul>
 *
 * @see org.eclipse.gemoc.executionframework.event.model.scenario.ScenarioPackage#getArbiterState()
 * @model
 * @generated
 */
public interface ArbiterState<P extends Property, T extends ArbiterTransition<P, ?>> extends EObject {
	/**
	 * Returns the value of the '<em><b>Incoming Transitions</b></em>' reference list.
	 * It is bidirectional and its opposite is '{@link org.eclipse.gemoc.executionframework.event.model.scenario.ArbiterTransition#getTarget <em>Target</em>}'.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Incoming Transitions</em>' reference list isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Incoming Transitions</em>' reference list.
	 * @see org.eclipse.gemoc.executionframework.event.model.scenario.ScenarioPackage#getArbiterState_IncomingTransitions()
	 * @see org.eclipse.gemoc.executionframework.event.model.scenario.ArbiterTransition#getTarget
	 * @model opposite="target"
	 * @generated
	 */
	EList<T> getIncomingTransitions();

	/**
	 * Returns the value of the '<em><b>Outgoing Transitions</b></em>' reference list.
	 * It is bidirectional and its opposite is '{@link org.eclipse.gemoc.executionframework.event.model.scenario.ArbiterTransition#getSource <em>Source</em>}'.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Outgoing Transitions</em>' reference list isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Outgoing Transitions</em>' reference list.
	 * @see org.eclipse.gemoc.executionframework.event.model.scenario.ScenarioPackage#getArbiterState_OutgoingTransitions()
	 * @see org.eclipse.gemoc.executionframework.event.model.scenario.ArbiterTransition#getSource
	 * @model opposite="source"
	 * @generated
	 */
	EList<T> getOutgoingTransitions();

	/**
	 * Returns the value of the '<em><b>Truth Value</b></em>' attribute.
	 * The literals are from the enumeration {@link org.eclipse.gemoc.executionframework.event.model.scenario.TruthValue}.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Truth Value</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Truth Value</em>' attribute.
	 * @see org.eclipse.gemoc.executionframework.event.model.scenario.TruthValue
	 * @see #setTruthValue(TruthValue)
	 * @see org.eclipse.gemoc.executionframework.event.model.scenario.ScenarioPackage#getArbiterState_TruthValue()
	 * @model required="true"
	 * @generated
	 */
	TruthValue getTruthValue();

	/**
	 * Sets the value of the '{@link org.eclipse.gemoc.executionframework.event.model.scenario.ArbiterState#getTruthValue <em>Truth Value</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Truth Value</em>' attribute.
	 * @see org.eclipse.gemoc.executionframework.event.model.scenario.TruthValue
	 * @see #getTruthValue()
	 * @generated
	 */
	void setTruthValue(TruthValue value);

	/**
	 * Returns the value of the '<em><b>Name</b></em>' attribute.
	 * <!-- begin-user-doc -->
	 * <p>
	 * If the meaning of the '<em>Name</em>' attribute isn't clear,
	 * there really should be more of a description here...
	 * </p>
	 * <!-- end-user-doc -->
	 * @return the value of the '<em>Name</em>' attribute.
	 * @see #setName(String)
	 * @see org.eclipse.gemoc.executionframework.event.model.scenario.ScenarioPackage#getArbiterState_Name()
	 * @model
	 * @generated
	 */
	String getName();

	/**
	 * Sets the value of the '{@link org.eclipse.gemoc.executionframework.event.model.scenario.ArbiterState#getName <em>Name</em>}' attribute.
	 * <!-- begin-user-doc -->
	 * <!-- end-user-doc -->
	 * @param value the new value of the '<em>Name</em>' attribute.
	 * @see #getName()
	 * @generated
	 */
	void setName(String value);

} // ArbiterState