generated-reduction actions
reduceActionForDifferentThanOperation1: nodes
	| result |
	result := UQLDifferentThanOperationNode new.
	result left_exp: (nodes at: 1).
	result bangEqualToken: ((nodes at: 2) at: 1).
	result lessThanGreaterThanToken: ((nodes at: 2) at: 2).
	result right_exp: (nodes at: 3).
	^ result