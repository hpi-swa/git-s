processing
processSubclass: aMapperClass
	| batchingLevel processed |
	batchingLevel := self implementsBatching: aMapperClass.
	batchingLevel = #none ifTrue: [^ self].
	self assertNoSubclassImplementsBatching: aMapperClass.
	processed := self remaining select: [:each | (self mapperBlock value: each) isKindOf: aMapperClass].
	self remaining removeAll: processed.
	batchingLevel = #perInstance
		ifTrue: [(processed groupBy: self mapperBlock) keysAndValuesDo: [:mapper :batch | self processBatch: batch using: mapper]]
		ifFalse: [self processBatch: processed using: aMapperClass].