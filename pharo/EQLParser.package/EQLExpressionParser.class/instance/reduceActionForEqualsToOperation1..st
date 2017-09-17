generated-reduction actions
reduceActionForEqualsToOperation1: nodes
	| result |
	result := EQLEqualsToOperationNode new.
	result left_exp: (nodes at: 1).
	result equalEqualToken: ((nodes at: 2) at: 1).
	result equalToken: ((nodes at: 2) at: 2).
	result right_exp: (nodes at: 3).
	^ result