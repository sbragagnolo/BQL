generated
value: anUQLRootQueryNode
	self value notNil
		ifTrue: [ self value parent: nil ].
	value := anUQLRootQueryNode.
	self value notNil
		ifTrue: [ self value parent: self ]