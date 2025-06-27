toolbuilder
buildChildren: builder
	^ Array streamContents: [:stream | 
		self visibleRecursiveChildrenDo: [:each |
			stream nextPut: (self buildChange: each with: builder)]]