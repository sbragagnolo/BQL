generated-reduction actions
reduceActionForArrayAccess1: nodes
	| result |
	result := UQLArrayAccessNode new.
	result value: (nodes at: 1).
	result leftBracketToken: (nodes at: 2).
	result access: (nodes at: 3).
	result rightBracketToken: (nodes at: 4).
	^ result