generated-reduction actions
reduceActionForDropConnectionStatement1: nodes
	| result |
	result := UQLDropConnectionStatementNode new.
	result dropToken: (nodes at: 1).
	result type: (nodes at: 2).
	result schemaToken: (nodes at: 3).
	result name: (nodes at: 4).
	^ result