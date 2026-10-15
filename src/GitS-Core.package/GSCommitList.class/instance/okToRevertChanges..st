ui
okToRevertChanges: aSymbol
	aSymbol = #expression: ifTrue: [self expression: ''].
	^ true