generated
value: anEQLNumberLiteralNode
	self value notNil
		ifTrue: [ self value parent: nil ].
	value := anEQLNumberLiteralNode.
	self value notNil
		ifTrue: [ self value parent: self ]