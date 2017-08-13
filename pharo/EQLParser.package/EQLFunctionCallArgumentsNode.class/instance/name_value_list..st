generated
name_value_list: anEQLNameValueListNode
	self name_value_list notNil
		ifTrue: [ self name_value_list parent: nil ].
	name_value_list := anEQLNameValueListNode.
	self name_value_list notNil
		ifTrue: [ self name_value_list parent: self ]