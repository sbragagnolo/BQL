generated-reduction actions
reduceActionForArrayAccess1: nodes
	| result |
	result := EQLArrayAccessNode new.
	result property: (nodes at: 1).
	result leftBracketToken: (nodes at: 2).
	result access_expression: (nodes at: 3).
	result rightBracketToken: (nodes at: 4).
	^ result