accessing
newMappers
	| removedMappers |
	removedMappers := self potentiallyRemovedMappers select: [:each |
							(self mapperChangeSets at: each) isIncludedRemoval].
	^ (self allMappers copyWithoutAll: removedMappers)
		collect: [:each | self bumpMapperVersionIfNecessary: each]