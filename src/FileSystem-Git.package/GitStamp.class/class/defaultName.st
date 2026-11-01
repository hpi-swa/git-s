accessing
defaultName
	DefaultName isEmptyOrNil ifFalse: [^ DefaultName].
	GSExternalSettings at: #name ifPresent: [:settingsName | ^ settingsName].
	^ GitStampNameRequest signal