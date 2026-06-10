toolbuilder
buildDescendants: builder
	^ Array streamContents: [:stream | 
		self visibleDescendantsDo: [:each |
			stream nextPut: (self buildChange: each with: builder)]]