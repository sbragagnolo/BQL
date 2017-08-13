generated
expression: anEQLRootQueryNode
	self expression notNil
		ifTrue: [ self expression parent: nil ].
	expression := anEQLRootQueryNode.
	self expression notNil
		ifTrue: [ self expression parent: self ]