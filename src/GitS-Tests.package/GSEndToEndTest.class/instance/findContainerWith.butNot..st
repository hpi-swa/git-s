finding
findContainerWith: withObject butNot: withoutObject
	| with without withOwners |
	with := self find: withObject.
	without := self findAll: withoutObject.
	withOwners := with morph ownerChain asOrderedCollection.
	without do: [:each | withOwners removeAllFoundIn: each morph ownerChain].
	^ self find: withOwners last