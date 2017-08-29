generated-reduction actions
reduceActionForMemberAccess1: nodes
	| result |
	result := EQLMemberAccessNode new.
	result property: (nodes at: 1).
	result addTokens: ((nodes at: 2) at: 1) to: result periodTokens.
	result addTokens: ((nodes at: 2) at: 2) to: result members.
	^ result