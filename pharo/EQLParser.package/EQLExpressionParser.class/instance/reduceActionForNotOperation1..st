generated-reduction actions
reduceActionForNotOperation1: nodes
	| result |
	result := EQLNotOperationNode new.
	result operator: (nodes at: 1).
	result exp: (nodes at: 2).
	^ result