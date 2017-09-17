generated-reduction actions
reduceActionForBooleanLiteral1: nodes
	| result |
	result := EQLBooleanLiteralNode new.
	result value: (nodes at: 1).
	^ result