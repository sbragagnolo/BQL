generated
left_exp: anEQLRootQueryNode
	self left_exp notNil
		ifTrue: [ self left_exp parent: nil ].
	left_exp := anEQLRootQueryNode.
	self left_exp notNil
		ifTrue: [ self left_exp parent: self ]