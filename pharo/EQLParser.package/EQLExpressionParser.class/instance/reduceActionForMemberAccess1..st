generated-reduction actions
reduceActionForMemberAccess1: nodes
	| result |
	result := EQLMemberAccessNode new.
	result property: (nodes at: 1).
	result periodToken: (nodes at: 2).
	result member: (nodes at: 3).
	^ result