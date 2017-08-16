generated-reduction actions
reduceActionForStringDate1: nodes
	| result |
	result := EQLStringDateNode new.
	result date: (nodes at: 1).
	result dateToken: (nodes at: 2).
	^ result