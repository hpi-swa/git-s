printing
printOn: aStream
	self printDescriptionOn: aStream.
	self shouldPrintTracked ifTrue: [
		aStream nextPutAll: (self isTracked
			"TODO: add link to help topic"
			ifTrue: [' (tracked)'] ifFalse: [' (inferred)'])].