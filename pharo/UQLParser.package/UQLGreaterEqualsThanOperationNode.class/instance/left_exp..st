generated
left_exp: anUQLRootQueryNode
	self left_exp notNil
		ifTrue: [ self left_exp parent: nil ].
	left_exp := anUQLRootQueryNode.
	self left_exp notNil
		ifTrue: [ self left_exp parent: self ]