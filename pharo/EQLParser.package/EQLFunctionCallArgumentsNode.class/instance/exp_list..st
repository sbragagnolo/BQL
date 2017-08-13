generated
exp_list: anEQLExpressionListNode
	self exp_list notNil
		ifTrue: [ self exp_list parent: nil ].
	exp_list := anEQLExpressionListNode.
	self exp_list notNil
		ifTrue: [ self exp_list parent: self ]