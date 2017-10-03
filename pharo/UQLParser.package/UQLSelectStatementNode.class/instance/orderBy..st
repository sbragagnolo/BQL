generated
orderBy: anUQLOrderByStatementNode
	self orderBy notNil
		ifTrue: [ self orderBy parent: nil ].
	orderBy := anUQLOrderByStatementNode.
	self orderBy notNil
		ifTrue: [ self orderBy parent: self ]