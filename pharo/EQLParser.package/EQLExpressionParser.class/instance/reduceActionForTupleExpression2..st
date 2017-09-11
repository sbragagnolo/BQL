generated-reduction actions
reduceActionForTupleExpression2: nodes
	| result |
	result := EQLTupleExpressionNode new.
	result leftParenToken: (nodes at: 1).
	result addObjects: ((nodes at: 2) at: 1) to: result exps.
	result addTokens: ((nodes at: 2) at: 2) to: result commaTokens.
	result rightParenToken: (nodes at: 3).
	^ result