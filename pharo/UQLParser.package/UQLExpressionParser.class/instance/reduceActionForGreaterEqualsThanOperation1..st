generated-reduction actions
reduceActionForGreaterEqualsThanOperation1: nodes
	| result |
	result := UQLGreaterEqualsThanOperationNode new.
	result left_exp: (nodes at: 1).
	result greaterThanEqualToken: (nodes at: 2).
	result right_exp: (nodes at: 3).
	^ result