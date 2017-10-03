generated
url: anUQLUrlLiteralNode
	self url notNil
		ifTrue: [ self url parent: nil ].
	url := anUQLUrlLiteralNode.
	self url notNil
		ifTrue: [ self url parent: self ]