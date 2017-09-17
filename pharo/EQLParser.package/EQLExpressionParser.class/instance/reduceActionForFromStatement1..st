generated-reduction actions
reduceActionForFromStatement1: nodes
	| result |
	result := EQLFromStatementNode new.
	result fromToken: (nodes at: 1).
	result base_source: (nodes at: 2).
	result addNodes: (nodes at: 3) to: result sourceses.
	^ result