generated-reduction actions
reduceActionForArrayAccess2: nodes
	| result |
	result := EQLArrayAccessNode new.
	result value: (nodes at: 1).
	result addTokens: ((nodes at: 2) at: 1) to: result periodTokens.
	result addTokens: ((nodes at: 2) at: 2) to: result members.
	result leftBracketToken: (nodes at: 3).
	result access: (nodes at: 4).
	result rightBracketToken: (nodes at: 5).
	^ result