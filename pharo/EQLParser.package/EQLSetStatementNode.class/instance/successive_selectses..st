generated
successive_selectses: anOrderedCollection
	self setParents: self successive_selectses to: nil.
	successive_selectses := anOrderedCollection.
	self setParents: self successive_selectses to: self