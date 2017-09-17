generated
message_send: anEQLFunctionCallNode
	self message_send notNil
		ifTrue: [ self message_send parent: nil ].
	message_send := anEQLFunctionCallNode.
	self message_send notNil
		ifTrue: [ self message_send parent: self ]