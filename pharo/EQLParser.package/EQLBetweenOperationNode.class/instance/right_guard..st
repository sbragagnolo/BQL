generated
right_guard: anEQLRootQueryNode
	self right_guard notNil
		ifTrue: [ self right_guard parent: nil ].
	right_guard := anEQLRootQueryNode.
	self right_guard notNil
		ifTrue: [ self right_guard parent: self ]