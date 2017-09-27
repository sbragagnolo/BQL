generated-reduction actions
reduceActionForMeasure1: nodes
	| result |
	result := EQLMeasureNode new.
	result value: (nodes at: 1).
	result unit: (nodes at: 2).
	^ result