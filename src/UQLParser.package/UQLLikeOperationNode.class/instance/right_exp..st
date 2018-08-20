generated
right_exp: anUQLStringLiteralNode
	self right_exp notNil
		ifTrue: [ self right_exp parent: nil ].
	right_exp := anUQLStringLiteralNode.
	self right_exp notNil
		ifTrue: [ self right_exp parent: self ]