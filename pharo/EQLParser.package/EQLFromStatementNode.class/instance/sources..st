generated
sources: anEQLSourceListNode
	self sources notNil
		ifTrue: [ self sources parent: nil ].
	sources := anEQLSourceListNode.
	self sources notNil
		ifTrue: [ self sources parent: self ]