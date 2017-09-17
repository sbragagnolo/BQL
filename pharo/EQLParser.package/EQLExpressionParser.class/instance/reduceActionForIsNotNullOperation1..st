generated-reduction actions
reduceActionForIsNotNullOperation1: nodes
	| result |
	result := EQLIsNotNullOperationNode new.
	result left_exp: (nodes at: 1).
	result isToken: (nodes at: 2).
	result notToken: (nodes at: 3).
	result nullToken: (nodes at: 4).
	^ result