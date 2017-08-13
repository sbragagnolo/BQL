generated-reduction actions
reduceActionForNumberLiteral1: nodes
	| result |
	result := EQLNumberLiteralNode new.
	result number: (nodes at: 1).
	result unit: (nodes at: 2).
	^ result