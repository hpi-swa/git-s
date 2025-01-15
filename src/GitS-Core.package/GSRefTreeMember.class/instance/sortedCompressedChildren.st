compressing
sortedCompressedChildren
	^ self compressedChildren sorted:
		[:each | each isDirectory ifTrue: [''] ifFalse: [each ref]] ascending