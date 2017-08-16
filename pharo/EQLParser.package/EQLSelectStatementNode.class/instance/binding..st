generated
binding: anEQLExpressionListNode
	self binding notNil
		ifTrue: [ self binding parent: nil ].
	binding := anEQLExpressionListNode.
	self binding notNil
		ifTrue: [ self binding parent: self ]