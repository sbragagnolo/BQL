generated-reduction actions
reduceActionForMethodCall2: nodes
	| result |
	result := EQLMethodCallNode new.
	result value: (nodes at: 1).
	result addTokens: ((nodes at: 2) at: 1) to: result periodTokens.
	result addTokens: ((nodes at: 2) at: 2) to: result members.
	result addToken: (nodes at: 3) to: result periodTokens.
	result message_send: (nodes at: 4).
	^ result