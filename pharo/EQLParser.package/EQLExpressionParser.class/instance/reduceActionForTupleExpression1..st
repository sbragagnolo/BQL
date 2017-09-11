generated-reduction actions
reduceActionForTupleExpression1: nodes
	| result |
	result := EQLTupleExpressionNode new.
	result leftBracketToken: (nodes at: 1).
	result addObjects: ((nodes at: 2) at: 1) to: result exps.
	result addTokens: ((nodes at: 2) at: 2) to: result commaTokens.
	result rightBracketToken: (nodes at: 3).
	^ result