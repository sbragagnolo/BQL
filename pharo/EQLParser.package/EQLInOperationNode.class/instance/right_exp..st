generated
right_exp: anEQLTupleExpressionNode
	self right_exp notNil
		ifTrue: [ self right_exp parent: nil ].
	right_exp := anEQLTupleExpressionNode.
	self right_exp notNil
		ifTrue: [ self right_exp parent: self ]