generated-reduction actions
reduceActionForInnerJoin1: nodes
	| result |
	result := UQLInnerJoinNode new.
	result innerToken: (nodes at: 1).
	result joinToken: (nodes at: 2).
	result joined_source: (nodes at: 3).
	result onToken: (nodes at: 4).
	result expression: (nodes at: 5).
	^ result