generated-reduction actions
reduceActionForMeasure1: nodes
	| result |
	result := UQLMeasureNode new.
	result value: (nodes at: 1).
	result unit: (nodes at: 2).
	^ result