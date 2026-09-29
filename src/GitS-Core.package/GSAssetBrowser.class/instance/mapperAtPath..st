accessing
mapperAtPath: aPath
	^ self mappers detect: [:each | each path = aPath] ifNone: [nil]