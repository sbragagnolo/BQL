generated
limit: anEQLLimitStatementNode
	self limit notNil
		ifTrue: [ self limit parent: nil ].
	limit := anEQLLimitStatementNode.
	self limit notNil
		ifTrue: [ self limit parent: self ]