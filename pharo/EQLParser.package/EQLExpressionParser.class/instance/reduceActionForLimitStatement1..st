generated-reduction actions
reduceActionForLimitStatement1: nodes
	| result |
	result := EQLLimitStatementNode new.
	result limitToken: (nodes at: 1).
	result amount: (nodes at: 2).
	^ result