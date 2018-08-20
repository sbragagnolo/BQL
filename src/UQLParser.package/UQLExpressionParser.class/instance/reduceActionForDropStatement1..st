generated-reduction actions
reduceActionForDropStatement1: nodes
	| result |
	result := UQLDropStatementNode new.
	result dropToken: (nodes at: 1).
	result collectionToken: (nodes at: 2).
	result name: (nodes at: 3).
	^ result