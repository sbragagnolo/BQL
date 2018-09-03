generated
targetedMember: anUQLRootQueryNode
	self targetedMember notNil
		ifTrue: [ self targetedMember parent: nil ].
	targetedMember := anUQLRootQueryNode.
	self targetedMember notNil
		ifTrue: [ self targetedMember parent: self ]