generated-reduction actions
reduceActionForFunctionCall1: nodes
	| result |
	result := EQLFunctionCallNode new.
	result selector: (nodes at: 1).
	result leftParenToken: (nodes at: 2).
	result arguments: (nodes at: 3).
	result rightParenToken: (nodes at: 4).
	^ result