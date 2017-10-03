generated
right_exp: anUQLRootQueryNode
	self right_exp notNil
		ifTrue: [ self right_exp parent: nil ].
	right_exp := anUQLRootQueryNode.
	self right_exp notNil
		ifTrue: [ self right_exp parent: self ]