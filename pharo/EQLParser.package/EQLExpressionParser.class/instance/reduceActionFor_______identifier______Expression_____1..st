generated-reduction actions
reduceActionFor_______identifier______Expression_____1: nodes
	| result |
	result := Array new: 5.
	result at: 1 put: (nodes at: 1).
	result at: 2 put: (nodes at: 2).
	^ result