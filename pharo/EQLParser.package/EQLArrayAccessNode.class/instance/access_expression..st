generated
access_expression: anEQLRootQueryNode
	self access_expression notNil
		ifTrue: [ self access_expression parent: nil ].
	access_expression := anEQLRootQueryNode.
	self access_expression notNil
		ifTrue: [ self access_expression parent: self ]