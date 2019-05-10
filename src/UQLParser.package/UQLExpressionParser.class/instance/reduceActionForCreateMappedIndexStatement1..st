generated-reduction actions
reduceActionForCreateMappedIndexStatement1: nodes
	| result |
	result := UQLCreateMappedIndexStatementNode new.
	result createToken: (nodes at: 1).
	result type: (nodes at: 2).
	result indexToken: (nodes at: 3).
	result name: (nodes at: 4).
	result onToken: (nodes at: 5).
	result targetedCollection: (nodes at: 6).
	result addToken: (nodes at: 7) to: result leftParenTokens.
	result targetedMember: (nodes at: 8).
	result addToken: (nodes at: 9) to: result rightParenTokens.
	result mappedToken: (nodes at: 10).
	result toToken: (nodes at: 11).
	result mappedCollection: (nodes at: 12).
	result addToken: (nodes at: 13) to: result leftParenTokens.
	result mappedCollectionMember: (nodes at: 14).
	result addToken: (nodes at: 15) to: result rightParenTokens.
	^ result