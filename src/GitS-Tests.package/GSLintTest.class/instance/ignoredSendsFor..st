ignored-sends
ignoredSendsFor: aCompiledMethod
	^ (aCompiledMethod pragmaAt: #ignoreSends:)
		ifNil: [#()]
		ifNotNil: [:pragma | pragma argumentAt: 1]