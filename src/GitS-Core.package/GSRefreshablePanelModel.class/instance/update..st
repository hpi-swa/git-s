updating
update: aSymbol
	super update: aSymbol.
	aSymbol = self refreshSymbol ifTrue: [self changed: #buildChildren].