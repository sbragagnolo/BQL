generated-reduction actions
reduceActionForModifyStatement1: nodes
	| result |
	result := UQLModifyStatementNode new.
	result modifyToken: (nodes at: 1).
	result collectionToken: (nodes at: 2).
	result name: (nodes at: 3).
	result leftBraceToken: (nodes at: 4).
	result selection: (nodes at: 5).
	result rightBraceToken: (nodes at: 6).
	^ result