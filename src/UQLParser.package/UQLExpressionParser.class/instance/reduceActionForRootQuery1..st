generated-reduction actions
reduceActionForRootQuery1: nodes
	| result |
	result := UQLRootQueryNode new.
	result addNodes: (nodes at: 1) to: result clauses.
	result semicolonToken: (nodes at: 2).
	^ result