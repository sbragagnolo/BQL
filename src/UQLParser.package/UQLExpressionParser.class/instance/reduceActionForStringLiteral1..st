generated-reduction actions
reduceActionForStringLiteral1: nodes
	| result |
	result := UQLStringLiteralNode new.
	result value: (nodes at: 1).
	^ result