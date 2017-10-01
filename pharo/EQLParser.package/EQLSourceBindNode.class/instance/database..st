generated
database: anEQLRootQueryNode
	self database notNil
		ifTrue: [ self database parent: nil ].
	database := anEQLRootQueryNode.
	self database notNil
		ifTrue: [ self database parent: self ]