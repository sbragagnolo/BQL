generated
exp: anEQLRootQueryNode
	self exp notNil
		ifTrue: [ self exp parent: nil ].
	exp := anEQLRootQueryNode.
	self exp notNil
		ifTrue: [ self exp parent: self ]