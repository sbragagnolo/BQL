generated
limit: anUQLLimitStatementNode
	self limit notNil
		ifTrue: [ self limit parent: nil ].
	limit := anUQLLimitStatementNode.
	self limit notNil
		ifTrue: [ self limit parent: self ]