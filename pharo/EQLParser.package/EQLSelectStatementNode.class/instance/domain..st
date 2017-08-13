generated
domain: anEQLDomainStatementNode
	self domain notNil
		ifTrue: [ self domain parent: nil ].
	domain := anEQLDomainStatementNode.
	self domain notNil
		ifTrue: [ self domain parent: self ]