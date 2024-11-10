git porcelain
shouldHandleUrlExternally: aString
	| errorMessage |
	GitFeatureFlags externalFetchAndPush ifTrue: [^ true].
	(self canHandleUrlInternally: aString) ifTrue: [^ false].
	errorMessage := 'The url {1} cannot be handled by the internal git implementation.'
						format: {aString printString}.
	(self requestToEnableExternalFetchAndPushBecause: errorMessage) ifTrue: [^ true].
	self error: errorMessage.