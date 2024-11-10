git porcelain - external
osProcessClass: aSymbol
	(Smalltalk classNamed: aSymbol) ifNotNil: [:class | ^ class].
	(self confirm: 'OSProcess is not installed, but is needed to run git externally. Install it?')
		ifFalse: [^ self error: 'OSProcess is needed to run git externally.'].
	Installer ss project: 'OSProcess'; install: 'OSProcess'.
	Installer ss project: 'CommandShell'; install: 'CommandShell'.
	^ Smalltalk classNamed: aSymbol