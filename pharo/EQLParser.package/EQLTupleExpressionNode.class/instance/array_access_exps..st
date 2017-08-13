generated
array_access_exps: anOrderedCollection
	self setParents: self array_access_exps to: nil.
	array_access_exps := anOrderedCollection.
	self setParents: self array_access_exps to: self