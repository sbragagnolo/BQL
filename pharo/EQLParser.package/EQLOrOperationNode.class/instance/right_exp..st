generated
right_exp: anEQLRootQueryNode
	self right_exp notNil
		ifTrue: [ self right_exp parent: nil ].
	right_exp := anEQLRootQueryNode.
	self right_exp notNil
		ifTrue: [ self right_exp parent: self ]