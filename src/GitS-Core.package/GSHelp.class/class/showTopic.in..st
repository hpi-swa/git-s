navigation
showTopic: aSymbol in: aHelpBrowser
	| path |
	path := self findTopicPath: aSymbol in: aHelpBrowser ifNone: [
		^ self showTopic: aSymbol in: self open model].
	aHelpBrowser currentTopicPath: path.
	^ aHelpBrowser