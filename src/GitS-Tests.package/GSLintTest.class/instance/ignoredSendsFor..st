ignored-sends
ignoredSendsFor: aCompiledMethod
	^ (aCompiledMethod pragmaAt: #linterIgnoreSends:)
		ifNil: [#()]
		ifNotNil: [:pragma | pragma argumentAt: 1]