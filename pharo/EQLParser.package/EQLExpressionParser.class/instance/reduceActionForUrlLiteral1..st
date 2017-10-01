generated-reduction actions
reduceActionForUrlLiteral1: nodes
	| result |
	result := EQLUrlLiteralNode new.
	result value: (nodes at: 1).
	^ result