generated
exp_list: anUQLExpressionListNode
	self exp_list notNil
		ifTrue: [ self exp_list parent: nil ].
	exp_list := anUQLExpressionListNode.
	self exp_list notNil
		ifTrue: [ self exp_list parent: self ]