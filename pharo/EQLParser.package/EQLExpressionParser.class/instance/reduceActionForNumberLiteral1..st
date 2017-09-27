generated-reduction actions
reduceActionForNumberLiteral1: nodes
	| result |
	result := EQLNumberLiteralNode new.
	result value: (nodes at: 1).
	^ result