generated-reduction actions
reduceActionForExpression5: nodes
	| result |
	result := EQLExpressionNode new.
	result term: (nodes at: 1).
	^ result