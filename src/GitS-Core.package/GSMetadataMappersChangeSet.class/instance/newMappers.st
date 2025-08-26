accessing
newMappers
	| newMappers |
	newMappers := self oldMappers as: OrderedCollection.
	self changes do: [:each | each isExcluded ifFalse: [each applyTo: newMappers]].
	^ newMappers collect: [:each | self bumpMapperVersionIfNecessary: each]