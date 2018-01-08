generated
name: anUQLRootQueryNode
	self name notNil
		ifTrue: [ self name parent: nil ].
	name := anUQLRootQueryNode.
	self name notNil
		ifTrue: [ self name parent: self ]