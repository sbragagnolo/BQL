generated
right_exp: anUQLTupleExpressionNode
	self right_exp notNil
		ifTrue: [ self right_exp parent: nil ].
	right_exp := anUQLTupleExpressionNode.
	self right_exp notNil
		ifTrue: [ self right_exp parent: self ]