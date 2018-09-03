generated
targetedCollection: anUQLRootQueryNode
	self targetedCollection notNil
		ifTrue: [ self targetedCollection parent: nil ].
	targetedCollection := anUQLRootQueryNode.
	self targetedCollection notNil
		ifTrue: [ self targetedCollection parent: self ]