printing
printOn: aStream
	super printOn: aStream.
	self dependents printElementsOn: aStream.