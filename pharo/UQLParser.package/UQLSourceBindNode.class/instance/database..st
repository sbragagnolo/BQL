generated
database: anUQLRootQueryNode
	self database notNil
		ifTrue: [ self database parent: nil ].
	database := anUQLRootQueryNode.
	self database notNil
		ifTrue: [ self database parent: self ]