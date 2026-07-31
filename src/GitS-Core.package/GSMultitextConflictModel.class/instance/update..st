updating
update: aSymbol
	super update: aSymbol.
	(#(resolution isResolved) includes: aSymbol) ifTrue: [self updateTexts].