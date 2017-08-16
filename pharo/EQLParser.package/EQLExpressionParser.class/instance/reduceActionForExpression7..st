generated-reduction actions
reduceActionForExpression7: nodes
	| result |
	result := EQLExpressionNode new.
	result term: (nodes at: 1).
	^ result