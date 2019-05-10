generated-reduction actions
reduceActionForParenthesisArithmeticExpression1: nodes
	| result |
	result := UQLParenthesisArithmeticExpressionNode new.
	result leftParenToken: (nodes at: 1).
	result exp: (nodes at: 2).
	result rightParenToken: (nodes at: 3).
	^ result