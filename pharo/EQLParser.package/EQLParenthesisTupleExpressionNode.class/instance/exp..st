generated
exp: anEQLTupleExpressionNode
	self exp notNil
		ifTrue: [ self exp parent: nil ].
	exp := anEQLTupleExpressionNode.
	self exp notNil
		ifTrue: [ self exp parent: self ]