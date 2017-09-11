generated-reduction actions
reduceActionFor_______identifier______Expression_____2: nodes
	| result |
	result := Array new: 5.
	result at: 3 put: (nodes at: 1).
	result at: 4 put: (nodes at: 2).
	result at: 5 put: (nodes at: 3).
	^ result