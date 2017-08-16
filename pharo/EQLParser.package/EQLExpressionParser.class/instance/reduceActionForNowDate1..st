generated-reduction actions
reduceActionForNowDate1: nodes
	| result |
	result := EQLNowDateNode new.
	result nowToken: (nodes at: 1).
	^ result