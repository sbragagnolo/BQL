generated
selector: anEQLIdentifierLiteralNode
	self selector notNil
		ifTrue: [ self selector parent: nil ].
	selector := anEQLIdentifierLiteralNode.
	self selector notNil
		ifTrue: [ self selector parent: self ]