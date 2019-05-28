package org.eclipse.gemoc.executionframework.property.monitor.esper.properties

import java.util.List
import java.util.Map
import org.eclipse.gemoc.executionframework.property.model.property.Between
import org.eclipse.gemoc.executionframework.property.model.property.Precedence
import org.eclipse.gemoc.executionframework.property.monitor.esper.AbstractTemporalProperty
import org.eclipse.gemoc.executionframework.property.monitor.esper.TruthValue
import org.eclipse.viatra.query.patternlanguage.emf.specification.SpecificationBuilder
import org.eclipse.viatra.query.runtime.api.IQuerySpecification

class SPrecedesPBetweenQAndR extends AbstractTemporalProperty {
	
	val IQuerySpecification<?> p
	val IQuerySpecification<?> q
	val IQuerySpecification<?> r
	val IQuerySpecification<?> s
	
	new(SpecificationBuilder builder, String name, Precedence response, Between between) {
		super(builder, name)
		p = builder.getOrCreateSpecification(response.pattern)
		q = builder.getOrCreateSpecification(between.lowerBoundPattern)
		r = builder.getOrCreateSpecification(between.upperBoundPattern)
		s = builder.getOrCreateSpecification(response.otherPattern)
		queries.put(p.fullyQualifiedName, p)
		queries.put(q.fullyQualifiedName, q)
		queries.put(r.fullyQualifiedName, r)
		queries.put(s.fullyQualifiedName, s)
	}
	
	override protected String getStatementString() {
		val pFqn = p.fqn
		val qFqn = q.fqn
		val rFqn = r.fqn
		val sFqn = s.fqn
		val result =
			'''
				select * from «name»
				match_recognize (
					measures P as P
					pattern (EoE | Q A*? (S | P)? A*? (EoE | R))
					define
						P as P.«pFqn»? is not null,
						Q as Q.«qFqn»? is not null,
						R as R.«rFqn»? is not null,
						S as S.«sFqn»? is not null,
						EoE as EoE.executionAboutToStop? is not null
				)
			'''
		return result
	}
	
	override protected getStatus(Map<String, List<Map<?, ?>>> events) {
		val lP = events.get("P")
		val reachedP = !(lP === null || lP.empty)
		val lR = events.get("P")
		val reachedR = !(lR === null || lR.empty)
		val lEoE = events.get("EoE")
		val reachedEoE = !(lEoE === null || lEoE.empty)
		if (reachedP) {
			if (reachedR) {
				return TruthValue.VIOLATED
			} else {
				return TruthValue.SATISFIED
			}
		} else {
			if (reachedEoE) {
				return TruthValue.SATISFIED
			} else {
				return TruthValue.UNKNOWN
			}
		}
	}
}