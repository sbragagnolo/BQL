generated
binding: anEQLIdentifierLiteralNode
	self binding notNil
		ifTrue: [ self binding parent: nil ].
	binding := anEQLIdentifierLiteralNode.
	self binding notNil
		ifTrue: [ self binding parent: self ]