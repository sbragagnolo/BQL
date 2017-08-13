generated
orderBy: anEQLOrderByStatementNode
	self orderBy notNil
		ifTrue: [ self orderBy parent: nil ].
	orderBy := anEQLOrderByStatementNode.
	self orderBy notNil
		ifTrue: [ self orderBy parent: self ]