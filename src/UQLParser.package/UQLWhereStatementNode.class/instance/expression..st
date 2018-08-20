generated
expression: anUQLRootQueryNode
	self expression notNil
		ifTrue: [ self expression parent: nil ].
	expression := anUQLRootQueryNode.
	self expression notNil
		ifTrue: [ self expression parent: self ]