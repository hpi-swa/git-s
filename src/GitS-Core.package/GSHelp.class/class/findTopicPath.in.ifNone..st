navigation
findTopicPath: aSymbol in: aHelpBrowser ifNone: aBlock
	aHelpBrowser do: [:topic :path |
		(topic key = aSymbol and: [ | parent |
			parent := path ifNotEmpty: #last ifEmpty: [aHelpBrowser rootTopic].
			parent isClassBasedHelpTopic and: [parent helpClass = self]])
				ifTrue: [^ path copyWith: topic]].
	^ aBlock value