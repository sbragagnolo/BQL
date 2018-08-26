generated-reduction actions
reduceActionForCreateIndexStatement1: nodes
	| result |
	result := UQLCreateIndexStatementNode new.
	result createToken: (nodes at: 1).
	result type: (nodes at: 2).
	result indexToken: (nodes at: 3).
	result name: (nodes at: 4).
	result onToken: (nodes at: 5).
	result collection: (nodes at: 6).
	result leftParenToken: (nodes at: 7).
	result member: (nodes at: 8).
	result rightParenToken: (nodes at: 9).
	^ result