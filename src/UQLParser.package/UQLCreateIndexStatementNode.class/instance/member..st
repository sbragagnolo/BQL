generated
member: anUQLRootQueryNode
	self member notNil
		ifTrue: [ self member parent: nil ].
	member := anUQLRootQueryNode.
	self member notNil
		ifTrue: [ self member parent: self ]