generated-reduction actions
reduceActionForGreaterThanOperation1: nodes
	| result |
	result := EQLGreaterThanOperationNode new.
	result left_exp: (nodes at: 1).
	result greaterThanToken: (nodes at: 2).
	result right_exp: (nodes at: 3).
	^ result