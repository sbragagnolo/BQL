generated-reduction actions
reduceActionForHexadecimalLiteral1: nodes
	| result |
	result := EQLHexadecimalLiteralNode new.
	result value: (nodes at: 1).
	^ result