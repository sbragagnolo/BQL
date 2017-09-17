generated
joined_source: anEQLSourceBindNode
	self joined_source notNil
		ifTrue: [ self joined_source parent: nil ].
	joined_source := anEQLSourceBindNode.
	self joined_source notNil
		ifTrue: [ self joined_source parent: self ]