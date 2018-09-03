generated
mappedCollectionMember: anUQLRootQueryNode
	self mappedCollectionMember notNil
		ifTrue: [ self mappedCollectionMember parent: nil ].
	mappedCollectionMember := anUQLRootQueryNode.
	self mappedCollectionMember notNil
		ifTrue: [ self mappedCollectionMember parent: self ]