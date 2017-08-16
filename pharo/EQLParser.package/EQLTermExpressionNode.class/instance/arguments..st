generated
arguments: anEQLFunctionCallArgumentsNode
	self arguments notNil
		ifTrue: [ self arguments parent: nil ].
	arguments := anEQLFunctionCallArgumentsNode.
	self arguments notNil
		ifTrue: [ self arguments parent: self ]