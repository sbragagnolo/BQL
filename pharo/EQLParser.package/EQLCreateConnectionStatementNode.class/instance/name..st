generated
name: anEQLIdentifierLiteralNode
	self name notNil
		ifTrue: [ self name parent: nil ].
	name := anEQLIdentifierLiteralNode.
	self name notNil
		ifTrue: [ self name parent: self ]