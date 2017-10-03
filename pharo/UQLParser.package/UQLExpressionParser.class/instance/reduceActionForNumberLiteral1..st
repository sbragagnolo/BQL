generated-reduction actions
reduceActionForNumberLiteral1: nodes
	| result |
	result := UQLNumberLiteralNode new.
	result value: (nodes at: 1).
	^ result