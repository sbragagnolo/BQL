generated
binding: anUQLIdentifierLiteralNode
	self binding notNil
		ifTrue: [ self binding parent: nil ].
	binding := anUQLIdentifierLiteralNode.
	self binding notNil
		ifTrue: [ self binding parent: self ]