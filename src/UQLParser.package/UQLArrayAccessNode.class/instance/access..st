generated
access: anUQLRootQueryNode
	self access notNil
		ifTrue: [ self access parent: nil ].
	access := anUQLRootQueryNode.
	self access notNil
		ifTrue: [ self access parent: self ]