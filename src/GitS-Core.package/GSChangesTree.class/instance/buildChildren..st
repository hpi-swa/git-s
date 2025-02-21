toolbuilder
buildChildren: builder
	^ Array streamContents: [:stream | 
		self recursiveChildrenDo: [:each |
			stream nextPut: (self buildChange: each with: builder)]]