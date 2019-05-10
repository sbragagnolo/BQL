generated-reduction actions
reduceActionForCreateConnectionStatement1: nodes
	| result |
	result := UQLCreateConnectionStatementNode new.
	result createToken: (nodes at: 1).
	result type: (nodes at: 2).
	result schemaToken: (nodes at: 3).
	result name: (nodes at: 4).
	result url: (nodes at: 5).
	^ result