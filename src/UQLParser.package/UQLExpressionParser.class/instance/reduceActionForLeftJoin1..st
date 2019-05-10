generated-reduction actions
reduceActionForLeftJoin1: nodes
	| result |
	result := UQLLeftJoinNode new.
	result leftToken: (nodes at: 1).
	result outerToken: (nodes at: 2).
	result joinToken: (nodes at: 3).
	result joined_source: (nodes at: 4).
	result onToken: (nodes at: 5).
	result expression: (nodes at: 6).
	^ result