accessing
valueToWrite
	| mappersToWrite |
	mappersToWrite := self currentMappers as: OrderedCollection.
	self changes do: [:each |
		each verifyExclusionState.
		each isExcluded ifFalse: [each applyTo: mappersToWrite]].
	^ mappersToWrite collect: [:each | self bumpMapperVersionIfNecessary: each]