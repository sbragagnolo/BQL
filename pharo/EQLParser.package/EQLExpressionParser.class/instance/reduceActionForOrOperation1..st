generated-reduction actions
reduceActionForOrOperation1: nodes
	| result |
	result := EQLOrOperationNode new.
	result left_exp: (nodes at: 1).
	result orOrToken: ((nodes at: 2) at: 1).
	result orToken: ((nodes at: 2) at: 2).
	result right_exp: (nodes at: 3).
	^ result