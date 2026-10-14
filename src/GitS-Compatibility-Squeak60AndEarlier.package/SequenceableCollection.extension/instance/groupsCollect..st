*GitS-Compatibility-Squeak60AndEarlier-enumerating-override
groupsCollect: aBlock 
	"Evaluate aBlock with my elements taken n at a time, where n is the number of arguments of aBlock, and asnwer an Array with the results. Ignore any leftovers at the end."

	| index argumentArray results numArgs endIndex |
	numArgs := aBlock numArgs.
	numArgs
		caseOf: { 
			[ 0 ] -> [ ^self error: 'At least one block argument expected.' ].
			[ 1 ] -> [ ^self collect: aBlock ].
			[ 2 ] -> [ ^self pairsCollect: aBlock ] }
		otherwise: [].
	argumentArray := Array new: numArgs.
	results := (Array new: self size // numArgs) writeStream.
	index := 1.
	endIndex := self size - numArgs + 1.
	[ index <= endIndex ] whileTrue: [
		argumentArray
			replaceFrom: 1
			to: numArgs
			with: self
			startingAt: index.
		results nextPut: (aBlock valueWithArguments: argumentArray).
		index := index + numArgs ].
	^ results contents