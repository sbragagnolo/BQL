generated
buffer_name: anEQLRootQueryNode
	self buffer_name notNil
		ifTrue: [ self buffer_name parent: nil ].
	buffer_name := anEQLRootQueryNode.
	self buffer_name notNil
		ifTrue: [ self buffer_name parent: self ]