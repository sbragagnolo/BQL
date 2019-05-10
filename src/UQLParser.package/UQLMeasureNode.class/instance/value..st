generated
value: anUQLNumberLiteralNode
	self value notNil
		ifTrue: [ self value parent: nil ].
	value := anUQLNumberLiteralNode.
	self value notNil
		ifTrue: [ self value parent: self ]