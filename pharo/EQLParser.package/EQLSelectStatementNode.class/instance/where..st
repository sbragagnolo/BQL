generated
where: anEQLWhereStatementNode
	self where notNil
		ifTrue: [ self where parent: nil ].
	where := anEQLWhereStatementNode.
	self where notNil
		ifTrue: [ self where parent: self ]