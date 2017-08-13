generated
func_args: anEQLFunctionCallArgumentsNode
	self func_args notNil
		ifTrue: [ self func_args parent: nil ].
	func_args := anEQLFunctionCallArgumentsNode.
	self func_args notNil
		ifTrue: [ self func_args parent: self ]