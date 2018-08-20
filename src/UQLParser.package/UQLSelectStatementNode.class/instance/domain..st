generated
domain: anUQLDomainStatementNode
	self domain notNil
		ifTrue: [ self domain parent: nil ].
	domain := anUQLDomainStatementNode.
	self domain notNil
		ifTrue: [ self domain parent: self ]