navigation
showTopic: topicSymbol heading: headingSymbol in: aHelpBrowser
	| newBrowser |
	newBrowser := self showTopic: topicSymbol in: aHelpBrowser.
	self showHeading: headingSymbol in: newBrowser.
	^ newBrowser