generated-reduction actions
reduceActionForFromStatement1: nodes
	| result |
	result := EQLFromStatementNode new.
	result fromToken: (nodes at: 1).
	result sources: (nodes at: 2).
	^ result