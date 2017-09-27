generated-reduction actions
reduceActionForMethodCall1: nodes
	| result |
	result := EQLMethodCallNode new.
	result value: (nodes at: 1).
	result addToken: (nodes at: 2) to: result periodTokens.
	result selector: (nodes at: 3).
	result leftParenToken: (nodes at: 4).
	result arguments: (nodes at: 5).
	result rightParenToken: (nodes at: 6).
	^ result