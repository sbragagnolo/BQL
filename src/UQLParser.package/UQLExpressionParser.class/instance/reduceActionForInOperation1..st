generated-reduction actions
reduceActionForInOperation1: nodes
	| result |
	result := UQLInOperationNode new.
	result left_exp: (nodes at: 1).
	result inToken: (nodes at: 2).
	result right_exp: (nodes at: 3).
	^ result