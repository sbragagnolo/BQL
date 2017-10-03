generated
selector: anUQLIdentifierLiteralNode
	self selector notNil
		ifTrue: [ self selector parent: nil ].
	selector := anUQLIdentifierLiteralNode.
	self selector notNil
		ifTrue: [ self selector parent: self ]