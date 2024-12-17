ref-tree
addOtherRefsRootTo: aRefTree references: aCollection
	| other |
	other := aRefTree
		ensureDirectory: ''
		label: 'other refs'
		tooltip: 'Everything that does not fit into the descriptions above.'.
	((aCollection
		select: [:each | each beginsWith: 'refs/squeak/'])
		collect: [:each | (((each splitBy: '/') first: 3) joinSeparatedBy: '/'), $/])
		asSet do: [:imageRef |
			imageRef = self refsBaseName
				ifTrue: [
					other
						ensureDirectory: imageRef
						label: 'this image'
						tooltip: 'Other refs associated with this image.
								There may be other images that use the same repository on disk.
								Refs associated with them will not be listed here, but in their own directories.'
									withoutLineEndings withBlanksCondensed]
				ifFalse: [ | image |
					image := other
						ensureDirectory: imageRef 
						label: 'a different image'
						tooltip: 'There is another image that uses the same repository on disk.
								The refs listed here are associated with that image.'
									withoutLineEndings withBlanksCondensed.
					image
						ensureDirectory: imageRef, 'heads/'
						label: 'local branches'
						tooltip: 'Local branches of the other image.']].