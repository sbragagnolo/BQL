generated-reduction actions
reduceActionForParenthesisBooleanExpression1: nodes
	| result |
	result := EQLParenthesisBooleanExpressionNode new.
	result leftParenToken: (nodes at: 1).
	result exp: (nodes at: 2).
	result rightParenToken: (nodes at: 3).
	^ result