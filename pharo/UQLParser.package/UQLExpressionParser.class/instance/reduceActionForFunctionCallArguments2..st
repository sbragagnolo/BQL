generated-reduction actions
reduceActionForFunctionCallArguments2: nodes
	| result |
	result := UQLFunctionCallArgumentsNode new.
	result exp_list: (nodes at: 1).
	^ result