generated-reduction actions
reduceActionForNegativeOperation1: nodes
	| result |
	result := EQLNegativeOperationNode new.
	result minusToken: (nodes at: 1).
	result exp: (nodes at: 2).
	^ result