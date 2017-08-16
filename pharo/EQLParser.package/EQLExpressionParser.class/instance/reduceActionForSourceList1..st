generated-reduction actions
reduceActionForSourceList1: nodes
	| result |
	result := EQLSourceListNode new.
	result addNode: (nodes at: 1) to: result sources.
	result addTokens: ((nodes at: 2) at: 1) to: result commaTokens.
	result addNodes: ((nodes at: 2) at: 2) to: result sources.
	^ result