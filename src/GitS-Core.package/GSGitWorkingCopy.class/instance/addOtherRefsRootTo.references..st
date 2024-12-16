ref-tree
addOtherRefsRootTo: aRefTree references: aCollection
	| other |
	other := aRefTree ensureDirectory: '' label: 'other refs'.
	((aCollection
		select: [:each | each beginsWith: 'refs/squeak/'])
		collect: [:each | (((each splitBy: '/') first: 3) joinSeparatedBy: '/'), $/])
		asSet do: [:imageRef | | image |
			image := other
				ensureDirectory: imageRef
				label: (imageRef = self refsBaseName ifTrue: ['this image'] ifFalse: ['a different image']).
			imageRef = self refsBaseName
				ifFalse: [image ensureDirectory: imageRef, 'heads/' label: 'local branches']].