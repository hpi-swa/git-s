dialog
excludedLabel: aStringOrEndToEndTestVersion
	(aStringOrEndToEndTestVersion isKindOf: GSEndToEndTestVersion)
		ifTrue: [^ self excludedLabel: aStringOrEndToEndTestVersion label].
	^ '( {1} )' format: {aStringOrEndToEndTestVersion}