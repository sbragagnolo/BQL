generated-reduction actions
reduceActionForBooleanLiteral1: nodes
	| result |
	result := UQLBooleanLiteralNode new.
	result value: (nodes at: 1).
	^ result