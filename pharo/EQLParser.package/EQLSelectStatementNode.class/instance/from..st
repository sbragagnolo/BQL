generated
from: anEQLFromStatementNode
	self from notNil
		ifTrue: [ self from parent: nil ].
	from := anEQLFromStatementNode.
	self from notNil
		ifTrue: [ self from parent: self ]