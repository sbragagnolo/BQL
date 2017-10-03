generated
buffer_name: anUQLRootQueryNode
	self buffer_name notNil
		ifTrue: [ self buffer_name parent: nil ].
	buffer_name := anUQLRootQueryNode.
	self buffer_name notNil
		ifTrue: [ self buffer_name parent: self ]