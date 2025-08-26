accessing
oldMappers: aCollection
	oldMappers := aCollection select: #isTracked.