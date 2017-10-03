generated-reduction actions
reduceActionForCreateConnectionStatement1: nodes
	| result |
	result := UQLCreateConnectionStatementNode new.
	result createToken: (nodes at: 1).
	result connectionToken: (nodes at: 2).
	result name: (nodes at: 3).
	result url: (nodes at: 4).
	^ result