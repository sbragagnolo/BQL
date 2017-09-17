generated
base_source: anEQLSourceBindNode
	self base_source notNil
		ifTrue: [ self base_source parent: nil ].
	base_source := anEQLSourceBindNode.
	self base_source notNil
		ifTrue: [ self base_source parent: self ]