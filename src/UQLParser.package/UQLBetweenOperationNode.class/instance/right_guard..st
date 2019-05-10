generated
right_guard: anUQLRootQueryNode
	self right_guard notNil
		ifTrue: [ self right_guard parent: nil ].
	right_guard := anUQLRootQueryNode.
	self right_guard notNil
		ifTrue: [ self right_guard parent: self ]