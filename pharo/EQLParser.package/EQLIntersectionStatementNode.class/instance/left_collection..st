generated
left_collection: anEQLRootQueryNode
	self left_collection notNil
		ifTrue: [ self left_collection parent: nil ].
	left_collection := anEQLRootQueryNode.
	self left_collection notNil
		ifTrue: [ self left_collection parent: self ]