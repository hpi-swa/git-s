public-accessing
hexHashAtPath: aPath
	aPath isRoot ifTrue: [^ self hexHash].
	^ (self entryAtPath: aPath) ifNotNil: #entryHexHash