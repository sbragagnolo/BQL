generated-reduction actions
reduceActionForMethodCall1: nodes
	| result |
	result := EQLMethodCallNode new.
	result value: (nodes at: 1).
	result addToken: (nodes at: 2) to: result periodTokens.
	result message_send: (nodes at: 3).
	^ result