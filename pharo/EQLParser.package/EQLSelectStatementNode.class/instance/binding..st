generated
binding: anEQLRootQueryNode
	self binding notNil
		ifTrue: [ self binding parent: nil ].
	binding := anEQLRootQueryNode.
	self binding notNil
		ifTrue: [ self binding parent: self ]