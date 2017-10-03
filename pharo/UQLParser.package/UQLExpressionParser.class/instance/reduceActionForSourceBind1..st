generated-reduction actions
reduceActionForSourceBind1: nodes
	| result |
	result := UQLSourceBindNode new.
	result binding: (nodes at: 1).
	result inToken: (nodes at: 2).
	result buffer_name: (nodes at: 3).
	result atToken: ((nodes at: 4) at: 1).
	result database: ((nodes at: 4) at: 2).
	^ result