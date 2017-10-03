generated
joined_source: anUQLSourceBindNode
	self joined_source notNil
		ifTrue: [ self joined_source parent: nil ].
	joined_source := anUQLSourceBindNode.
	self joined_source notNil
		ifTrue: [ self joined_source parent: self ]