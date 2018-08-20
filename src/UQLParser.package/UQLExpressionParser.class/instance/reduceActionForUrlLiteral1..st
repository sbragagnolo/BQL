generated-reduction actions
reduceActionForUrlLiteral1: nodes
	| result |
	result := UQLUrlLiteralNode new.
	result value: (nodes at: 1).
	^ result