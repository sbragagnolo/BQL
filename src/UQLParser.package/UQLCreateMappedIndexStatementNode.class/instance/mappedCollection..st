generated
mappedCollection: anUQLRootQueryNode
	self mappedCollection notNil
		ifTrue: [ self mappedCollection parent: nil ].
	mappedCollection := anUQLRootQueryNode.
	self mappedCollection notNil
		ifTrue: [ self mappedCollection parent: self ]