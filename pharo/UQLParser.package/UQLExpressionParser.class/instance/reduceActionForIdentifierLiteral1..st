generated-reduction actions
reduceActionForIdentifierLiteral1: nodes
	| result |
	result := UQLIdentifierLiteralNode new.
	result value: (nodes at: 1).
	^ result