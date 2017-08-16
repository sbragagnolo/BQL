generated-reduction actions
reduceActionForSumOperation1: nodes
	| result |
	result := EQLSumOperationNode new.
	result left_exp: (nodes at: 1).
	result plusToken: (nodes at: 2).
	result right_exp: (nodes at: 3).
	^ result