generated-reduction actions
reduceActionForIsNullOperation1: nodes
	| result |
	result := EQLIsNullOperationNode new.
	result expression: (nodes at: 1).
	result isToken: (nodes at: 2).
	result nullToken: (nodes at: 3).
	^ result