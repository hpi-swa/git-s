accessing
mappers: aCollection
	self mappers ifNotNil: [self mappers do: [:each | each removeDependent: self; isTracked: false]].
	mappers := aCollection asOrderedCollection.
	self mappers ifNotNil: [self mappers do: [:each | each addDependent: self; isTracked: true]].
	self mappersChanged.