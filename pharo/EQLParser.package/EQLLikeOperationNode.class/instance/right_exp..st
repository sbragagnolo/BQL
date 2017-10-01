generated
right_exp: anEQLStringLiteralNode
	self right_exp notNil
		ifTrue: [ self right_exp parent: nil ].
	right_exp := anEQLStringLiteralNode.
	self right_exp notNil
		ifTrue: [ self right_exp parent: self ]