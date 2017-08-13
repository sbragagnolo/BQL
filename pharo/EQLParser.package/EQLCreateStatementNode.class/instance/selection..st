generated
selection: anEQLSelectStatementNode
	self selection notNil
		ifTrue: [ self selection parent: nil ].
	selection := anEQLSelectStatementNode.
	self selection notNil
		ifTrue: [ self selection parent: self ]