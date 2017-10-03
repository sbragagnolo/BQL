generated
sourceses: anOrderedCollection
	self setParents: self sourceses to: nil.
	sourceses := anOrderedCollection.
	self setParents: self sourceses to: self