toolbuilder
buildDescendants: builder
	^ Array streamContents: [:stream | 
		self visibleSortedDescendantsDo: [:each |
			stream nextPut: (self buildChange: each with: builder)]]