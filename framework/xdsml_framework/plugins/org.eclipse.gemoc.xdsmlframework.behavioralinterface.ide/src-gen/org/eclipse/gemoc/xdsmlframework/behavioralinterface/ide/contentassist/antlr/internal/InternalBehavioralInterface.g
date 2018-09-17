/*
 * generated by Xtext 2.12.0
 */
grammar InternalBehavioralInterface;

options {
	superClass=AbstractInternalContentAssistParser;
}

@lexer::header {
package org.eclipse.gemoc.xdsmlframework.behavioralinterface.ide.contentassist.antlr.internal;

// Hack: Use our own Lexer superclass by means of import. 
// Currently there is no other way to specify the superclass for the lexer.
import org.eclipse.xtext.ide.editor.contentassist.antlr.internal.Lexer;
}

@parser::header {
package org.eclipse.gemoc.xdsmlframework.behavioralinterface.ide.contentassist.antlr.internal;

import java.io.InputStream;
import org.eclipse.xtext.*;
import org.eclipse.xtext.parser.*;
import org.eclipse.xtext.parser.impl.*;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.xtext.parser.antlr.XtextTokenStream;
import org.eclipse.xtext.parser.antlr.XtextTokenStream.HiddenTokens;
import org.eclipse.xtext.ide.editor.contentassist.antlr.internal.AbstractInternalContentAssistParser;
import org.eclipse.xtext.ide.editor.contentassist.antlr.internal.DFA;
import org.eclipse.gemoc.xdsmlframework.behavioralinterface.services.BehavioralInterfaceGrammarAccess;

}
@parser::members {
	private BehavioralInterfaceGrammarAccess grammarAccess;

	public void setGrammarAccess(BehavioralInterfaceGrammarAccess grammarAccess) {
		this.grammarAccess = grammarAccess;
	}

	@Override
	protected Grammar getGrammar() {
		return grammarAccess.getGrammar();
	}

	@Override
	protected String getValueForTokenName(String tokenName) {
		return tokenName;
	}
}

// Entry rule entryRuleBehavioralInterface
entryRuleBehavioralInterface
:
{ before(grammarAccess.getBehavioralInterfaceRule()); }
	 ruleBehavioralInterface
{ after(grammarAccess.getBehavioralInterfaceRule()); } 
	 EOF 
;

// Rule BehavioralInterface
ruleBehavioralInterface 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getBehavioralInterfaceAccess().getGroup()); }
		(rule__BehavioralInterface__Group__0)
		{ after(grammarAccess.getBehavioralInterfaceAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleEvent
entryRuleEvent
:
{ before(grammarAccess.getEventRule()); }
	 ruleEvent
{ after(grammarAccess.getEventRule()); } 
	 EOF 
;

// Rule Event
ruleEvent 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getEventAccess().getAlternatives()); }
		(rule__Event__Alternatives)
		{ after(grammarAccess.getEventAccess().getAlternatives()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleInputEvent
entryRuleInputEvent
:
{ before(grammarAccess.getInputEventRule()); }
	 ruleInputEvent
{ after(grammarAccess.getInputEventRule()); } 
	 EOF 
;

// Rule InputEvent
ruleInputEvent 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getInputEventAccess().getGroup()); }
		(rule__InputEvent__Group__0)
		{ after(grammarAccess.getInputEventAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleOutputEvent
entryRuleOutputEvent
:
{ before(grammarAccess.getOutputEventRule()); }
	 ruleOutputEvent
{ after(grammarAccess.getOutputEventRule()); } 
	 EOF 
;

// Rule OutputEvent
ruleOutputEvent 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getOutputEventAccess().getGroup()); }
		(rule__OutputEvent__Group__0)
		{ after(grammarAccess.getOutputEventAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleEventParameter
entryRuleEventParameter
:
{ before(grammarAccess.getEventParameterRule()); }
	 ruleEventParameter
{ after(grammarAccess.getEventParameterRule()); } 
	 EOF 
;

// Rule EventParameter
ruleEventParameter 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getEventParameterAccess().getGroup()); }
		(rule__EventParameter__Group__0)
		{ after(grammarAccess.getEventParameterAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleFQN
entryRuleFQN
:
{ before(grammarAccess.getFQNRule()); }
	 ruleFQN
{ after(grammarAccess.getFQNRule()); } 
	 EOF 
;

// Rule FQN
ruleFQN 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getFQNAccess().getGroup()); }
		(rule__FQN__Group__0)
		{ after(grammarAccess.getFQNAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Event__Alternatives
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getEventAccess().getInputEventParserRuleCall_0()); }
		ruleInputEvent
		{ after(grammarAccess.getEventAccess().getInputEventParserRuleCall_0()); }
	)
	|
	(
		{ before(grammarAccess.getEventAccess().getOutputEventParserRuleCall_1()); }
		ruleOutputEvent
		{ after(grammarAccess.getEventAccess().getOutputEventParserRuleCall_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__InputEvent__InterruptibleAlternatives_8_2_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getInputEventAccess().getInterruptibleTrueKeyword_8_2_0_0()); }
		'true'
		{ after(grammarAccess.getInputEventAccess().getInterruptibleTrueKeyword_8_2_0_0()); }
	)
	|
	(
		{ before(grammarAccess.getInputEventAccess().getInterruptibleFalseKeyword_8_2_0_1()); }
		'false'
		{ after(grammarAccess.getInputEventAccess().getInterruptibleFalseKeyword_8_2_0_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__BehavioralInterface__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__BehavioralInterface__Group__0__Impl
	rule__BehavioralInterface__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__BehavioralInterface__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getBehavioralInterfaceAccess().getDslKeyword_0()); }
	'dsl'
	{ after(grammarAccess.getBehavioralInterfaceAccess().getDslKeyword_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__BehavioralInterface__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__BehavioralInterface__Group__1__Impl
	rule__BehavioralInterface__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__BehavioralInterface__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getBehavioralInterfaceAccess().getDslNameAssignment_1()); }
	(rule__BehavioralInterface__DslNameAssignment_1)
	{ after(grammarAccess.getBehavioralInterfaceAccess().getDslNameAssignment_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__BehavioralInterface__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__BehavioralInterface__Group__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__BehavioralInterface__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getBehavioralInterfaceAccess().getEventsAssignment_2()); }
	(rule__BehavioralInterface__EventsAssignment_2)*
	{ after(grammarAccess.getBehavioralInterfaceAccess().getEventsAssignment_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__InputEvent__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__InputEvent__Group__0__Impl
	rule__InputEvent__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__InputEvent__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getInputEventAccess().getInputKeyword_0()); }
	'input'
	{ after(grammarAccess.getInputEventAccess().getInputKeyword_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__InputEvent__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__InputEvent__Group__1__Impl
	rule__InputEvent__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__InputEvent__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getInputEventAccess().getNameAssignment_1()); }
	(rule__InputEvent__NameAssignment_1)
	{ after(grammarAccess.getInputEventAccess().getNameAssignment_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__InputEvent__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__InputEvent__Group__2__Impl
	rule__InputEvent__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__InputEvent__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getInputEventAccess().getRuleKeyword_2()); }
	'rule'
	{ after(grammarAccess.getInputEventAccess().getRuleKeyword_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__InputEvent__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__InputEvent__Group__3__Impl
	rule__InputEvent__Group__4
;
finally {
	restoreStackSize(stackSize);
}

rule__InputEvent__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getInputEventAccess().getEqualsSignKeyword_3()); }
	'='
	{ after(grammarAccess.getInputEventAccess().getEqualsSignKeyword_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__InputEvent__Group__4
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__InputEvent__Group__4__Impl
	rule__InputEvent__Group__5
;
finally {
	restoreStackSize(stackSize);
}

rule__InputEvent__Group__4__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getInputEventAccess().getRuleDeclaringTypeAssignment_4()); }
	(rule__InputEvent__RuleDeclaringTypeAssignment_4)
	{ after(grammarAccess.getInputEventAccess().getRuleDeclaringTypeAssignment_4()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__InputEvent__Group__5
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__InputEvent__Group__5__Impl
	rule__InputEvent__Group__6
;
finally {
	restoreStackSize(stackSize);
}

rule__InputEvent__Group__5__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getInputEventAccess().getColonColonKeyword_5()); }
	'::'
	{ after(grammarAccess.getInputEventAccess().getColonColonKeyword_5()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__InputEvent__Group__6
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__InputEvent__Group__6__Impl
	rule__InputEvent__Group__7
;
finally {
	restoreStackSize(stackSize);
}

rule__InputEvent__Group__6__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getInputEventAccess().getRuleAssignment_6()); }
	(rule__InputEvent__RuleAssignment_6)
	{ after(grammarAccess.getInputEventAccess().getRuleAssignment_6()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__InputEvent__Group__7
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__InputEvent__Group__7__Impl
	rule__InputEvent__Group__8
;
finally {
	restoreStackSize(stackSize);
}

rule__InputEvent__Group__7__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getInputEventAccess().getGroup_7()); }
	(rule__InputEvent__Group_7__0)?
	{ after(grammarAccess.getInputEventAccess().getGroup_7()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__InputEvent__Group__8
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__InputEvent__Group__8__Impl
	rule__InputEvent__Group__9
;
finally {
	restoreStackSize(stackSize);
}

rule__InputEvent__Group__8__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getInputEventAccess().getGroup_8()); }
	(rule__InputEvent__Group_8__0)?
	{ after(grammarAccess.getInputEventAccess().getGroup_8()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__InputEvent__Group__9
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__InputEvent__Group__9__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__InputEvent__Group__9__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getInputEventAccess().getGroup_9()); }
	(rule__InputEvent__Group_9__0)?
	{ after(grammarAccess.getInputEventAccess().getGroup_9()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__InputEvent__Group_7__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__InputEvent__Group_7__0__Impl
	rule__InputEvent__Group_7__1
;
finally {
	restoreStackSize(stackSize);
}

rule__InputEvent__Group_7__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getInputEventAccess().getParamsKeyword_7_0()); }
	'params'
	{ after(grammarAccess.getInputEventAccess().getParamsKeyword_7_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__InputEvent__Group_7__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__InputEvent__Group_7__1__Impl
	rule__InputEvent__Group_7__2
;
finally {
	restoreStackSize(stackSize);
}

rule__InputEvent__Group_7__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getInputEventAccess().getEqualsSignKeyword_7_1()); }
	'='
	{ after(grammarAccess.getInputEventAccess().getEqualsSignKeyword_7_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__InputEvent__Group_7__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__InputEvent__Group_7__2__Impl
	rule__InputEvent__Group_7__3
;
finally {
	restoreStackSize(stackSize);
}

rule__InputEvent__Group_7__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getInputEventAccess().getParamsAssignment_7_2()); }
	(rule__InputEvent__ParamsAssignment_7_2)
	{ after(grammarAccess.getInputEventAccess().getParamsAssignment_7_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__InputEvent__Group_7__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__InputEvent__Group_7__3__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__InputEvent__Group_7__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getInputEventAccess().getGroup_7_3()); }
	(rule__InputEvent__Group_7_3__0)*
	{ after(grammarAccess.getInputEventAccess().getGroup_7_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__InputEvent__Group_7_3__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__InputEvent__Group_7_3__0__Impl
	rule__InputEvent__Group_7_3__1
;
finally {
	restoreStackSize(stackSize);
}

rule__InputEvent__Group_7_3__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getInputEventAccess().getCommaKeyword_7_3_0()); }
	','
	{ after(grammarAccess.getInputEventAccess().getCommaKeyword_7_3_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__InputEvent__Group_7_3__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__InputEvent__Group_7_3__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__InputEvent__Group_7_3__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getInputEventAccess().getParamsAssignment_7_3_1()); }
	(rule__InputEvent__ParamsAssignment_7_3_1)
	{ after(grammarAccess.getInputEventAccess().getParamsAssignment_7_3_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__InputEvent__Group_8__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__InputEvent__Group_8__0__Impl
	rule__InputEvent__Group_8__1
;
finally {
	restoreStackSize(stackSize);
}

rule__InputEvent__Group_8__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getInputEventAccess().getInterruptibleKeyword_8_0()); }
	'interruptible'
	{ after(grammarAccess.getInputEventAccess().getInterruptibleKeyword_8_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__InputEvent__Group_8__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__InputEvent__Group_8__1__Impl
	rule__InputEvent__Group_8__2
;
finally {
	restoreStackSize(stackSize);
}

rule__InputEvent__Group_8__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getInputEventAccess().getEqualsSignKeyword_8_1()); }
	'='
	{ after(grammarAccess.getInputEventAccess().getEqualsSignKeyword_8_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__InputEvent__Group_8__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__InputEvent__Group_8__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__InputEvent__Group_8__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getInputEventAccess().getInterruptibleAssignment_8_2()); }
	(rule__InputEvent__InterruptibleAssignment_8_2)
	{ after(grammarAccess.getInputEventAccess().getInterruptibleAssignment_8_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__InputEvent__Group_9__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__InputEvent__Group_9__0__Impl
	rule__InputEvent__Group_9__1
;
finally {
	restoreStackSize(stackSize);
}

rule__InputEvent__Group_9__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getInputEventAccess().getPreconditionKeyword_9_0()); }
	'precondition'
	{ after(grammarAccess.getInputEventAccess().getPreconditionKeyword_9_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__InputEvent__Group_9__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__InputEvent__Group_9__1__Impl
	rule__InputEvent__Group_9__2
;
finally {
	restoreStackSize(stackSize);
}

rule__InputEvent__Group_9__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getInputEventAccess().getEqualsSignKeyword_9_1()); }
	'='
	{ after(grammarAccess.getInputEventAccess().getEqualsSignKeyword_9_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__InputEvent__Group_9__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__InputEvent__Group_9__2__Impl
	rule__InputEvent__Group_9__3
;
finally {
	restoreStackSize(stackSize);
}

rule__InputEvent__Group_9__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getInputEventAccess().getPreconditionDeclaringTypeAssignment_9_2()); }
	(rule__InputEvent__PreconditionDeclaringTypeAssignment_9_2)
	{ after(grammarAccess.getInputEventAccess().getPreconditionDeclaringTypeAssignment_9_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__InputEvent__Group_9__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__InputEvent__Group_9__3__Impl
	rule__InputEvent__Group_9__4
;
finally {
	restoreStackSize(stackSize);
}

rule__InputEvent__Group_9__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getInputEventAccess().getColonColonKeyword_9_3()); }
	'::'
	{ after(grammarAccess.getInputEventAccess().getColonColonKeyword_9_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__InputEvent__Group_9__4
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__InputEvent__Group_9__4__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__InputEvent__Group_9__4__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getInputEventAccess().getPreconditionAssignment_9_4()); }
	(rule__InputEvent__PreconditionAssignment_9_4)
	{ after(grammarAccess.getInputEventAccess().getPreconditionAssignment_9_4()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__OutputEvent__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__OutputEvent__Group__0__Impl
	rule__OutputEvent__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__OutputEvent__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getOutputEventAccess().getOutputKeyword_0()); }
	'output'
	{ after(grammarAccess.getOutputEventAccess().getOutputKeyword_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__OutputEvent__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__OutputEvent__Group__1__Impl
	rule__OutputEvent__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__OutputEvent__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getOutputEventAccess().getNameAssignment_1()); }
	(rule__OutputEvent__NameAssignment_1)
	{ after(grammarAccess.getOutputEventAccess().getNameAssignment_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__OutputEvent__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__OutputEvent__Group__2__Impl
	rule__OutputEvent__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__OutputEvent__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getOutputEventAccess().getRuleKeyword_2()); }
	'rule'
	{ after(grammarAccess.getOutputEventAccess().getRuleKeyword_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__OutputEvent__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__OutputEvent__Group__3__Impl
	rule__OutputEvent__Group__4
;
finally {
	restoreStackSize(stackSize);
}

rule__OutputEvent__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getOutputEventAccess().getEqualsSignKeyword_3()); }
	'='
	{ after(grammarAccess.getOutputEventAccess().getEqualsSignKeyword_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__OutputEvent__Group__4
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__OutputEvent__Group__4__Impl
	rule__OutputEvent__Group__5
;
finally {
	restoreStackSize(stackSize);
}

rule__OutputEvent__Group__4__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getOutputEventAccess().getRuleDeclaringTypeAssignment_4()); }
	(rule__OutputEvent__RuleDeclaringTypeAssignment_4)
	{ after(grammarAccess.getOutputEventAccess().getRuleDeclaringTypeAssignment_4()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__OutputEvent__Group__5
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__OutputEvent__Group__5__Impl
	rule__OutputEvent__Group__6
;
finally {
	restoreStackSize(stackSize);
}

rule__OutputEvent__Group__5__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getOutputEventAccess().getColonColonKeyword_5()); }
	'::'
	{ after(grammarAccess.getOutputEventAccess().getColonColonKeyword_5()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__OutputEvent__Group__6
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__OutputEvent__Group__6__Impl
	rule__OutputEvent__Group__7
;
finally {
	restoreStackSize(stackSize);
}

rule__OutputEvent__Group__6__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getOutputEventAccess().getRuleAssignment_6()); }
	(rule__OutputEvent__RuleAssignment_6)
	{ after(grammarAccess.getOutputEventAccess().getRuleAssignment_6()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__OutputEvent__Group__7
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__OutputEvent__Group__7__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__OutputEvent__Group__7__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getOutputEventAccess().getGroup_7()); }
	(rule__OutputEvent__Group_7__0)?
	{ after(grammarAccess.getOutputEventAccess().getGroup_7()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__OutputEvent__Group_7__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__OutputEvent__Group_7__0__Impl
	rule__OutputEvent__Group_7__1
;
finally {
	restoreStackSize(stackSize);
}

rule__OutputEvent__Group_7__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getOutputEventAccess().getParamsKeyword_7_0()); }
	'params'
	{ after(grammarAccess.getOutputEventAccess().getParamsKeyword_7_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__OutputEvent__Group_7__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__OutputEvent__Group_7__1__Impl
	rule__OutputEvent__Group_7__2
;
finally {
	restoreStackSize(stackSize);
}

rule__OutputEvent__Group_7__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getOutputEventAccess().getParamsAssignment_7_1()); }
	(rule__OutputEvent__ParamsAssignment_7_1)
	{ after(grammarAccess.getOutputEventAccess().getParamsAssignment_7_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__OutputEvent__Group_7__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__OutputEvent__Group_7__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__OutputEvent__Group_7__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getOutputEventAccess().getGroup_7_2()); }
	(rule__OutputEvent__Group_7_2__0)*
	{ after(grammarAccess.getOutputEventAccess().getGroup_7_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__OutputEvent__Group_7_2__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__OutputEvent__Group_7_2__0__Impl
	rule__OutputEvent__Group_7_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__OutputEvent__Group_7_2__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getOutputEventAccess().getCommaKeyword_7_2_0()); }
	','
	{ after(grammarAccess.getOutputEventAccess().getCommaKeyword_7_2_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__OutputEvent__Group_7_2__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__OutputEvent__Group_7_2__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__OutputEvent__Group_7_2__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getOutputEventAccess().getParamsAssignment_7_2_1()); }
	(rule__OutputEvent__ParamsAssignment_7_2_1)
	{ after(grammarAccess.getOutputEventAccess().getParamsAssignment_7_2_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__EventParameter__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__EventParameter__Group__0__Impl
	rule__EventParameter__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__EventParameter__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getEventParameterAccess().getNameAssignment_0()); }
	(rule__EventParameter__NameAssignment_0)
	{ after(grammarAccess.getEventParameterAccess().getNameAssignment_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__EventParameter__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__EventParameter__Group__1__Impl
	rule__EventParameter__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__EventParameter__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getEventParameterAccess().getColonKeyword_1()); }
	':'
	{ after(grammarAccess.getEventParameterAccess().getColonKeyword_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__EventParameter__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__EventParameter__Group__2__Impl
	rule__EventParameter__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__EventParameter__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getEventParameterAccess().getTypeAssignment_2()); }
	(rule__EventParameter__TypeAssignment_2)
	{ after(grammarAccess.getEventParameterAccess().getTypeAssignment_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__EventParameter__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__EventParameter__Group__3__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__EventParameter__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getEventParameterAccess().getManyAssignment_3()); }
	(rule__EventParameter__ManyAssignment_3)?
	{ after(grammarAccess.getEventParameterAccess().getManyAssignment_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__FQN__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__FQN__Group__0__Impl
	rule__FQN__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__FQN__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getFQNAccess().getIDTerminalRuleCall_0()); }
	RULE_ID
	{ after(grammarAccess.getFQNAccess().getIDTerminalRuleCall_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__FQN__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__FQN__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__FQN__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getFQNAccess().getGroup_1()); }
	(rule__FQN__Group_1__0)*
	{ after(grammarAccess.getFQNAccess().getGroup_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__FQN__Group_1__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__FQN__Group_1__0__Impl
	rule__FQN__Group_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__FQN__Group_1__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getFQNAccess().getFullStopKeyword_1_0()); }
	'.'
	{ after(grammarAccess.getFQNAccess().getFullStopKeyword_1_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__FQN__Group_1__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__FQN__Group_1__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__FQN__Group_1__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getFQNAccess().getIDTerminalRuleCall_1_1()); }
	RULE_ID
	{ after(grammarAccess.getFQNAccess().getIDTerminalRuleCall_1_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__BehavioralInterface__DslNameAssignment_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getBehavioralInterfaceAccess().getDslNameFQNParserRuleCall_1_0()); }
		ruleFQN
		{ after(grammarAccess.getBehavioralInterfaceAccess().getDslNameFQNParserRuleCall_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__BehavioralInterface__EventsAssignment_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getBehavioralInterfaceAccess().getEventsEventParserRuleCall_2_0()); }
		ruleEvent
		{ after(grammarAccess.getBehavioralInterfaceAccess().getEventsEventParserRuleCall_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__InputEvent__NameAssignment_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getInputEventAccess().getNameFQNParserRuleCall_1_0()); }
		ruleFQN
		{ after(grammarAccess.getInputEventAccess().getNameFQNParserRuleCall_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__InputEvent__RuleDeclaringTypeAssignment_4
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getInputEventAccess().getRuleDeclaringTypeFQNParserRuleCall_4_0()); }
		ruleFQN
		{ after(grammarAccess.getInputEventAccess().getRuleDeclaringTypeFQNParserRuleCall_4_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__InputEvent__RuleAssignment_6
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getInputEventAccess().getRuleIDTerminalRuleCall_6_0()); }
		RULE_ID
		{ after(grammarAccess.getInputEventAccess().getRuleIDTerminalRuleCall_6_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__InputEvent__ParamsAssignment_7_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getInputEventAccess().getParamsEventParameterParserRuleCall_7_2_0()); }
		ruleEventParameter
		{ after(grammarAccess.getInputEventAccess().getParamsEventParameterParserRuleCall_7_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__InputEvent__ParamsAssignment_7_3_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getInputEventAccess().getParamsEventParameterParserRuleCall_7_3_1_0()); }
		ruleEventParameter
		{ after(grammarAccess.getInputEventAccess().getParamsEventParameterParserRuleCall_7_3_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__InputEvent__InterruptibleAssignment_8_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getInputEventAccess().getInterruptibleAlternatives_8_2_0()); }
		(rule__InputEvent__InterruptibleAlternatives_8_2_0)
		{ after(grammarAccess.getInputEventAccess().getInterruptibleAlternatives_8_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__InputEvent__PreconditionDeclaringTypeAssignment_9_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getInputEventAccess().getPreconditionDeclaringTypeFQNParserRuleCall_9_2_0()); }
		ruleFQN
		{ after(grammarAccess.getInputEventAccess().getPreconditionDeclaringTypeFQNParserRuleCall_9_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__InputEvent__PreconditionAssignment_9_4
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getInputEventAccess().getPreconditionIDTerminalRuleCall_9_4_0()); }
		RULE_ID
		{ after(grammarAccess.getInputEventAccess().getPreconditionIDTerminalRuleCall_9_4_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__OutputEvent__NameAssignment_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getOutputEventAccess().getNameFQNParserRuleCall_1_0()); }
		ruleFQN
		{ after(grammarAccess.getOutputEventAccess().getNameFQNParserRuleCall_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__OutputEvent__RuleDeclaringTypeAssignment_4
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getOutputEventAccess().getRuleDeclaringTypeFQNParserRuleCall_4_0()); }
		ruleFQN
		{ after(grammarAccess.getOutputEventAccess().getRuleDeclaringTypeFQNParserRuleCall_4_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__OutputEvent__RuleAssignment_6
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getOutputEventAccess().getRuleIDTerminalRuleCall_6_0()); }
		RULE_ID
		{ after(grammarAccess.getOutputEventAccess().getRuleIDTerminalRuleCall_6_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__OutputEvent__ParamsAssignment_7_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getOutputEventAccess().getParamsEventParameterParserRuleCall_7_1_0()); }
		ruleEventParameter
		{ after(grammarAccess.getOutputEventAccess().getParamsEventParameterParserRuleCall_7_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__OutputEvent__ParamsAssignment_7_2_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getOutputEventAccess().getParamsEventParameterParserRuleCall_7_2_1_0()); }
		ruleEventParameter
		{ after(grammarAccess.getOutputEventAccess().getParamsEventParameterParserRuleCall_7_2_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__EventParameter__NameAssignment_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getEventParameterAccess().getNameFQNParserRuleCall_0_0()); }
		ruleFQN
		{ after(grammarAccess.getEventParameterAccess().getNameFQNParserRuleCall_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__EventParameter__TypeAssignment_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getEventParameterAccess().getTypeFQNParserRuleCall_2_0()); }
		ruleFQN
		{ after(grammarAccess.getEventParameterAccess().getTypeFQNParserRuleCall_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__EventParameter__ManyAssignment_3
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getEventParameterAccess().getManyAsteriskKeyword_3_0()); }
		(
			{ before(grammarAccess.getEventParameterAccess().getManyAsteriskKeyword_3_0()); }
			'*'
			{ after(grammarAccess.getEventParameterAccess().getManyAsteriskKeyword_3_0()); }
		)
		{ after(grammarAccess.getEventParameterAccess().getManyAsteriskKeyword_3_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

RULE_ID : '^'? ('a'..'z'|'A'..'Z'|'_') ('a'..'z'|'A'..'Z'|'_'|'0'..'9')*;

RULE_INT : ('0'..'9')+;

RULE_STRING : ('"' ('\\' .|~(('\\'|'"')))* '"'|'\'' ('\\' .|~(('\\'|'\'')))* '\'');

RULE_ML_COMMENT : '/*' ( options {greedy=false;} : . )*'*/';

RULE_SL_COMMENT : '//' ~(('\n'|'\r'))* ('\r'? '\n')?;

RULE_WS : (' '|'\t'|'\r'|'\n')+;

RULE_ANY_OTHER : .;