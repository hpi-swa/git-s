git porcelain
requestToEnableExternalFetchAndPushBecause: aString
	| preference answer |
	preference := Preferences
						pragmaPreferenceFor: GitFeatureFlags
						getter: #externalFetchAndPush.
	answer := (self confirm:
		('{1} Do you want to automatically use the git commandline?
		This will enable {2} to remember your decision.'
			withoutLineEndings withBlanksCondensed asText
			format: {
				aString.
				('a preference' asText
					addAttribute: (PluggableTextAttribute evalBlock: [preference open]);
					yourself)})).
	answer ifTrue: [preference preferenceValue: true].
	^ answer