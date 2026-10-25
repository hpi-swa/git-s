external settings
fetchExternalSettingsIn: aDirectory
	"GSExternalSettings fetchExternalSettingsIn: ExternalSettings preferenceDirectory"

	(aDirectory fileExists: self settingsFileName)
		ifFalse: [^self].
	(aDirectory readOnlyFileNamed: self settingsFileName) ifNotNil: [:stream |
		[Settings := ExternalSettings parseServerEntryArgsFrom: stream]
			ensure: [stream close]].