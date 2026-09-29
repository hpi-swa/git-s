ui
assetPathIsInferred: aPath
	^ (self mapperAtPath: aPath)
		ifNotNil: #isInferred
		ifNil: [(self mappersInDirectory: aPath) allSatisfy: #isInferred]