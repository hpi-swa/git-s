credentials
requestCredentialsFor: aStringOrUrl
	| username token |
	username := GSGUIUtilities request: ('Username for {1}:' format: {aStringOrUrl}).
	token := GSGUIUtilities requestPassword: ('Token for {1}:' format: {aStringOrUrl}).
	^ {username. token}