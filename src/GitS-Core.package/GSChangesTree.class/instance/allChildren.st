accessing
allChildren
	^ Array streamContents: [:stream |
		self recursiveChildrenDo: [:each | stream nextPut: each]]