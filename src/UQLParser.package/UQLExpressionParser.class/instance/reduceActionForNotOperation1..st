generated-reduction actions
reduceActionForNotOperation1: nodes
	| result |
	result := UQLNotOperationNode new.
	result bangToken: ((nodes at: 1) at: 1).
	result tildeToken: ((nodes at: 1) at: 2).
	result exp: (nodes at: 2).
	^ result