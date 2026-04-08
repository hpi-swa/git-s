accessing
currentMappers: aCollection
	currentMappers := aCollection select: #isTracked.