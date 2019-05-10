generated
from: anUQLFromStatementNode
	self from notNil
		ifTrue: [ self from parent: nil ].
	from := anUQLFromStatementNode.
	self from notNil
		ifTrue: [ self from parent: self ]