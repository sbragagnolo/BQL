generated
exp: anUQLRootQueryNode
	self exp notNil
		ifTrue: [ self exp parent: nil ].
	exp := anUQLRootQueryNode.
	self exp notNil
		ifTrue: [ self exp parent: self ]