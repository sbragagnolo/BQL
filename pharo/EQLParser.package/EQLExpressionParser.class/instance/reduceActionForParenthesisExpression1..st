generated-reduction actions
reduceActionForParenthesisExpression1: nodes
	| result |
	result := EQLParenthesisExpressionNode new.
	result leftParenToken: (nodes at: 1).
	result exp: (nodes at: 2).
	result rightParenToken: (nodes at: 3).
	^ result