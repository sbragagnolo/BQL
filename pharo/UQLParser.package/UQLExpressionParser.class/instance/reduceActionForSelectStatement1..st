generated-reduction actions
reduceActionForSelectStatement1: nodes
	| result |
	result := UQLSelectStatementNode new.
	result selectToken: (nodes at: 1).
	result binding: (nodes at: 2).
	result from: (nodes at: 3).
	result domain: (nodes at: 4).
	result where: (nodes at: 5).
	result orderBy: (nodes at: 6).
	result limit: (nodes at: 7).
	^ result