generated-reduction actions
reduceActionForBetweenOperation1: nodes
	| result |
	result := UQLBetweenOperationNode new.
	result left_exp: (nodes at: 1).
	result betweenToken: (nodes at: 2).
	result left_guard: (nodes at: 3).
	result andToken: (nodes at: 4).
	result right_guard: (nodes at: 5).
	^ result