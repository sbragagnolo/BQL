generated-reduction actions
reduceActionForTermExpression3: nodes
	| result |
	result := EQLFunctionCallNode new.
	result property: (nodes at: 1).
	result addTokens: ((nodes at: 2) at: 1) to: result periodTokens.
	result addTokens: ((nodes at: 2) at: 2) to: result members.
	result addTokens: ((nodes at: 2) at: 3) to: result leftBracketTokens.
	result
		addObjects: ((nodes at: 2) at: 4)
		to: result access_expressions.
	result addTokens: ((nodes at: 2) at: 5) to: result rightBracketTokens.
	result leftParenToken: (nodes at: 3).
	result arguments: (nodes at: 4).
	result rightParenToken: (nodes at: 5).
	^ result