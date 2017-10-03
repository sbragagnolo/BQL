generated
binding: anUQLExpressionListNode
	self binding notNil
		ifTrue: [ self binding parent: nil ].
	binding := anUQLExpressionListNode.
	self binding notNil
		ifTrue: [ self binding parent: self ]