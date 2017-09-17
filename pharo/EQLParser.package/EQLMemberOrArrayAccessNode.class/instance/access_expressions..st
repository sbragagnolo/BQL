generated
access_expressions: anOrderedCollection
	self setParents: self access_expressions to: nil.
	access_expressions := anOrderedCollection.
	self setParents: self access_expressions to: self