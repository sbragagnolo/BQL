generated
select: anEQLSelectStatementNode
	self select notNil
		ifTrue: [ self select parent: nil ].
	select := anEQLSelectStatementNode.
	self select notNil
		ifTrue: [ self select parent: self ]