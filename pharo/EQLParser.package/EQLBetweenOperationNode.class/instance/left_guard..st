generated
left_guard: anEQLRootQueryNode
	self left_guard notNil
		ifTrue: [ self left_guard parent: nil ].
	left_guard := anEQLRootQueryNode.
	self left_guard notNil
		ifTrue: [ self left_guard parent: self ]