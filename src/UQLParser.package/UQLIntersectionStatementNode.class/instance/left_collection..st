generated
left_collection: anUQLRootQueryNode
	self left_collection notNil
		ifTrue: [ self left_collection parent: nil ].
	left_collection := anUQLRootQueryNode.
	self left_collection notNil
		ifTrue: [ self left_collection parent: self ]