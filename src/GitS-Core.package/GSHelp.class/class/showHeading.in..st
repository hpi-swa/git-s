navigation
showHeading: aSymbol in: aHelpBrowser
	| interval |
	aSymbol ifNil: [^ self].
	interval := self findHeadingInterval: aSymbol in: aHelpBrowser topicContents ifNone: [^ self].
	aHelpBrowser topicContentsSelection: interval.