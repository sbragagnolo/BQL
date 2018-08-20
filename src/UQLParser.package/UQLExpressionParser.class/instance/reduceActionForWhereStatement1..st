generated-reduction actions
reduceActionForWhereStatement1: nodes
	| result |
	result := UQLWhereStatementNode new.
	result whereToken: (nodes at: 1).
	result expression: (nodes at: 2).
	^ result