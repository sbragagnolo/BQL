generated
where: anUQLWhereStatementNode
	self where notNil
		ifTrue: [ self where parent: nil ].
	where := anUQLWhereStatementNode.
	self where notNil
		ifTrue: [ self where parent: self ]