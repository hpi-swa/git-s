updating
update: aSymbol
	super update: aSymbol.
	(#(isExcluded hasConflicts wasEdited) includes: aSymbol)
		ifTrue: [self changed: #rootNodes].
	(aSymbol = #isExcluded and: [self selectedChange notNil and: [self selectedChange isTree]])
		ifTrue: [self changed: #buildChange:].