generated-reduction actions
reduceActionForLikeOperation1: nodes
	| result |
	result := EQLLikeOperationNode new.
	result left_exp: (nodes at: 1).
	result operator: (nodes at: 2).
	result right_exp: (nodes at: 3).
	^ result