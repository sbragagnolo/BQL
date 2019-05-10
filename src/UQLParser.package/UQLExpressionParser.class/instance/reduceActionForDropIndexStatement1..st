generated-reduction actions
reduceActionForDropIndexStatement1: nodes
	| result |
	result := UQLDropIndexStatementNode new.
	result dropToken: (nodes at: 1).
	result indexToken: (nodes at: 2).
	result name: (nodes at: 3).
	^ result