generated-reduction actions
reduceActionForFromStatement1: nodes
	| result |
	result := EQLFromStatementNode new.
	result fromToken: (nodes at: 1).
	result binding: (nodes at: 2).
	result inToken: (nodes at: 3).
	result stream_name: (nodes at: 4).
	^ result