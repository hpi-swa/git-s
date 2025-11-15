Autocompletion
publicSelectors
	^ (self organization categories
		select: [:each | each beginsWith: 'public - '])
		gather: [:each | self methodsInCategory: each]