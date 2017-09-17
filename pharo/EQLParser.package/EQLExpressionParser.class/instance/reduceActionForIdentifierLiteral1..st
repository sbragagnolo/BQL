generated-reduction actions
reduceActionForIdentifierLiteral1: nodes
	| result |
	result := EQLIdentifierLiteralNode new.
	result value: (nodes at: 1).
	^ result