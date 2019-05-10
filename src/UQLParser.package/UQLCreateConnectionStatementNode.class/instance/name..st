generated
name: anUQLIdentifierLiteralNode
	self name notNil
		ifTrue: [ self name parent: nil ].
	name := anUQLIdentifierLiteralNode.
	self name notNil
		ifTrue: [ self name parent: self ]