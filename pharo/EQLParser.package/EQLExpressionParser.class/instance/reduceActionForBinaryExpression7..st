generated-reduction actions
reduceActionForBinaryExpression7: nodes
	| result |
	result := EQLBinaryExpressionNode new.
	result left_exp: (nodes at: 1).
	result operation: (nodes at: 2).
	result right_exp: (nodes at: 3).
	^ result