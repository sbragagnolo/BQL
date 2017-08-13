generated-reduction actions
reduceActionForUnaryPrefixExpression1: nodes
	| result |
	result := EQLUnaryPrefixExpressionNode new.
	result operation: (nodes at: 1).
	result exp: (nodes at: 2).
	^ result