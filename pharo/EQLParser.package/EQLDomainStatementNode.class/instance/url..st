generated
url: anEQLUrlLiteralNode
	self url notNil
		ifTrue: [ self url parent: nil ].
	url := anEQLUrlLiteralNode.
	self url notNil
		ifTrue: [ self url parent: self ]