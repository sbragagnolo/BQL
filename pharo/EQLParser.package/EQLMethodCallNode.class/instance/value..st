generated
value: anEQLRootQueryNode
	self value notNil
		ifTrue: [ self value parent: nil ].
	value := anEQLRootQueryNode.
	self value notNil
		ifTrue: [ self value parent: self ]