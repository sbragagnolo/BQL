generated-reduction actions
reduceActionForExpressionList1: nodes
	| result |
	result := EQLExpressionListNode new.
	result addObject: (nodes at: 1) to: result exps.
	result addTokens: ((nodes at: 2) at: 1) to: result commaTokens.
	result addObjects: ((nodes at: 2) at: 2) to: result exps.
	^ result