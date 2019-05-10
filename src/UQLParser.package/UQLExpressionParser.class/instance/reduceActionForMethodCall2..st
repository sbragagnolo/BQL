generated-reduction actions
reduceActionForMethodCall2: nodes
	| result |
	result := UQLMethodCallNode new.
	result value: (nodes at: 1).
	result addTokens: ((nodes at: 2) at: 1) to: result periodTokens.
	result addNodes: ((nodes at: 2) at: 2) to: result members.
	result addToken: (nodes at: 3) to: result periodTokens.
	result selector: (nodes at: 4).
	result leftParenToken: (nodes at: 5).
	result arguments: (nodes at: 6).
	result rightParenToken: (nodes at: 7).
	^ result