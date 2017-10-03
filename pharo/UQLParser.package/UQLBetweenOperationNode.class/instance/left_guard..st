generated
left_guard: anUQLRootQueryNode
	self left_guard notNil
		ifTrue: [ self left_guard parent: nil ].
	left_guard := anUQLRootQueryNode.
	self left_guard notNil
		ifTrue: [ self left_guard parent: self ]