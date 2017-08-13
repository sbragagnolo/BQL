generated-reduction actions
reduceActionForTermExpression1: nodes
	| result |
	result := EQLTermExpressionNode new.
	result factor: (nodes at: 1).
	^ result