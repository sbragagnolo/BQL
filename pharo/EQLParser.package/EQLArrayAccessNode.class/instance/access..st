generated
access: anEQLRootQueryNode
	self access notNil
		ifTrue: [ self access parent: nil ].
	access := anEQLRootQueryNode.
	self access notNil
		ifTrue: [ self access parent: self ]