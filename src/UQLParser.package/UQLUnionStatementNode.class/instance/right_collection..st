generated
right_collection: anUQLRootQueryNode
	self right_collection notNil
		ifTrue: [ self right_collection parent: nil ].
	right_collection := anUQLRootQueryNode.
	self right_collection notNil
		ifTrue: [ self right_collection parent: self ]