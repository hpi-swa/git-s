credentials
requestCredentialsFor: aStringOrUrl
	| username password |
	username := GSGUIUtilities request: ('Username for {1}:' format: {aStringOrUrl}).
	password := GSGUIUtilities requestPassword:
		(aStringOrUrl asUrl authority = 'github.com'
			ifTrue: ['Token for {1}. Create one {2}, with at least the ''repo'' scope.' asText format: {
				aStringOrUrl.
				GSTextUtilities
					addAttribute: (TextURL url: 'https://github.com/settings/tokens/new')
					to: 'here'}]
			ifFalse: ['Password for {1}:' format: {aStringOrUrl}]).
	^ {username. password}