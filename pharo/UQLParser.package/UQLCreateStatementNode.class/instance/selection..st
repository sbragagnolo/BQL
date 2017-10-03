generated
selection: anUQLSelectStatementNode
	self selection notNil
		ifTrue: [ self selection parent: nil ].
	selection := anUQLSelectStatementNode.
	self selection notNil
		ifTrue: [ self selection parent: self ]