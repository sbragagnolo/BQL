generated
member: anUQLIdentifierLiteralNode
	self member notNil
		ifTrue: [ self member parent: nil ].
	member := anUQLIdentifierLiteralNode.
	self member notNil
		ifTrue: [ self member parent: self ]