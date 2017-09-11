generated-reduction actions
reduceActionForNameValueList1: nodes
	| result |
	result := EQLNameValueListNode new.
	result addToken: (nodes at: 1) to: result ids.
	result addToken: (nodes at: 2) to: result colonTokens.
	result addObject: (nodes at: 3) to: result exps.
	result addTokens: ((nodes at: 4) at: 1) to: result commaTokens.
	result addTokens: ((nodes at: 4) at: 2) to: result ids.
	result addTokens: ((nodes at: 4) at: 3) to: result colonTokens.
	result addObjects: ((nodes at: 4) at: 4) to: result exps.
	result addToken: (nodes at: 5) to: result commaTokens.
	^ result