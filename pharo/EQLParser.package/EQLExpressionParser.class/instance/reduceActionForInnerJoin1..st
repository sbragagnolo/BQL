generated-reduction actions
reduceActionForInnerJoin1: nodes
	| result |
	result := EQLInnerJoinNode new.
	result joinToken: (nodes at: 1).
	result joined_source: (nodes at: 2).
	result onToken: (nodes at: 3).
	result expression: (nodes at: 4).
	^ result