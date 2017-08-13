generated
opt_access: anEQLOptionalMemberArrayAccessNode
	self opt_access notNil
		ifTrue: [ self opt_access parent: nil ].
	opt_access := anEQLOptionalMemberArrayAccessNode.
	self opt_access notNil
		ifTrue: [ self opt_access parent: self ]