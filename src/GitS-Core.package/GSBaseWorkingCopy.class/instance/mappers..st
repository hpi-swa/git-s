accessing
mappers: aCollection
	self mappers ifNotNil: [self mappers do: [:each | self removedMapper: each]].
	mappers := aCollection collect: [:each | self mapperToAdd: each] as: OrderedCollection.
	self mappersChanged.