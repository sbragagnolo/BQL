generated
right_collection: anEQLRootQueryNode
	self right_collection notNil
		ifTrue: [ self right_collection parent: nil ].
	right_collection := anEQLRootQueryNode.
	self right_collection notNil
		ifTrue: [ self right_collection parent: self ]