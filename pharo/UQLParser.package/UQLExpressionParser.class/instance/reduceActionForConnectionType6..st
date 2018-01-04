generated-reduction actions
reduceActionForConnectionType6: nodes
	| result |
	result := UQLConnectionTypeNode new.
	result bitcashToken: (nodes at: 1).
	^ result