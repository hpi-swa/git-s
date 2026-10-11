credentials
requestCredentialsFor: aStringOrUrl
	| username password |
	username := GSGUIUtilities request: ('Username for {1}:' format: {aStringOrUrl}).
	password := GSGUIUtilities requestPassword: (self passwordPromptFor: aStringOrUrl asUrl).
	^ {username. password}