accessing
changes: aCollection
	changes ifNotNil: [changes do: [:each | each removeDependent: self]].
	changes := aCollection.
	changes ifNotNil: [changes do: [:each | each addDependent: self]].
	self
		updateChangesTree;
		selectedChange:
			((self changes includes: self selectedChange)
				ifTrue: [self selectedChange]
				ifFalse: [nil]).