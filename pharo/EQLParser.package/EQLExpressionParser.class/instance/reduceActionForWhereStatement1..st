generated-reduction actions
reduceActionForWhereStatement1: nodes
	| result |
	result := EQLWhereStatementNode new.
	result whereToken: (nodes at: 1).
	result expression: (nodes at: 2).
	^ result