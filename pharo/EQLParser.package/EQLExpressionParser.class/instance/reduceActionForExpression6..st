generated-reduction actions
reduceActionForExpression6: nodes
	| result |
	result := EQLExpressionNode new.
	result term: (nodes at: 1).
	^ result