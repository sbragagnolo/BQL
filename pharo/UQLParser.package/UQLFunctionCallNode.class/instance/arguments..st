generated
arguments: anUQLFunctionCallArgumentsNode
	self arguments notNil
		ifTrue: [ self arguments parent: nil ].
	arguments := anUQLFunctionCallArgumentsNode.
	self arguments notNil
		ifTrue: [ self arguments parent: self ]