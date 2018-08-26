generated
collection: anUQLRootQueryNode
	self collection notNil
		ifTrue: [ self collection parent: nil ].
	collection := anUQLRootQueryNode.
	self collection notNil
		ifTrue: [ self collection parent: self ]