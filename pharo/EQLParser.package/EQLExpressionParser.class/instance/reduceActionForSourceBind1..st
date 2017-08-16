generated-reduction actions
reduceActionForSourceBind1: nodes
	| result |
	result := EQLSourceBindNode new.
	result binding: (nodes at: 1).
	result inToken: (nodes at: 2).
	result buffer_name: (nodes at: 3).
	^ result