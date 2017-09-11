generated-reduction actions
reduceActionForTermExpression2: nodes
	| result |
	result := EQLMemberOrArrayAccessNode new.
	result property: (nodes at: 1).
	result addTokens: ((nodes at: 2) at: 1) to: result periodTokens.
	result addTokens: ((nodes at: 2) at: 2) to: result members.
	result addTokens: ((nodes at: 2) at: 3) to: result leftBracketTokens.
	result
		addObjects: ((nodes at: 2) at: 4)
		to: result access_expressions.
	result addTokens: ((nodes at: 2) at: 5) to: result rightBracketTokens.
	^ result