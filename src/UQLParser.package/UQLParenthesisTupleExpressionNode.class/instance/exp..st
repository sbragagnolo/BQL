generated
exp: anUQLTupleExpressionNode
	self exp notNil
		ifTrue: [ self exp parent: nil ].
	exp := anUQLTupleExpressionNode.
	self exp notNil
		ifTrue: [ self exp parent: self ]