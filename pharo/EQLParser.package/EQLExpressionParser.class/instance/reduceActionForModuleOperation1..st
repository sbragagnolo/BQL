generated-reduction actions
reduceActionForModuleOperation1: nodes
	| result |
	result := EQLModuleOperationNode new.
	result left_exp: (nodes at: 1).
	result percentToken: (nodes at: 2).
	result right_exp: (nodes at: 3).
	^ result