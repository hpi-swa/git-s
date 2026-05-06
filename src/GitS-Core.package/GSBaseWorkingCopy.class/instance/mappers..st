accessing
mappers: aCollection
	self mappers ifNotNil: [self mappers do: [:each | each removeDependent: self]].
	mappers := aCollection asOrderedCollection.
	self mappers ifNotNil: [self mappers do: [:each | each addDependent: self]].
	self mappersChanged.