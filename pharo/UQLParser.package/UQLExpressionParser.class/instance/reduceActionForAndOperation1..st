generated-reduction actions
reduceActionForAndOperation1: nodes
	| result |
	result := UQLAndOperationNode new.
	result left_exp: (nodes at: 1).
	result andAndToken: ((nodes at: 2) at: 1).
	result andToken: ((nodes at: 2) at: 2).
	result right_exp: (nodes at: 3).
	^ result