accessing
mappersInDirectory: aPath
	^ self mappers select: [:each | aPath contains: each path]