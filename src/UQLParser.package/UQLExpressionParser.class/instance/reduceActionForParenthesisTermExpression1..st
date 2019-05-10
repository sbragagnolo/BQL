generated-reduction actions
reduceActionForParenthesisTermExpression1: nodes
	| result |
	result := UQLParenthesisTermExpressionNode new.
	result leftParenToken: (nodes at: 1).
	result exp: (nodes at: 2).
	result rightParenToken: (nodes at: 3).
	^ result