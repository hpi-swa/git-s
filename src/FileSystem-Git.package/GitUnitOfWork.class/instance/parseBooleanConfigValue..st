configuration
parseBooleanConfigValue: aString
	^ #('yes' 'on' 'true' '1') includes: aString asLowercase