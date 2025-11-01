private
initialRequestTo: aUrl withService: aServiceName
	^ self handleConnectionClosedDuring: [
		[self client httpGet: aUrl asString , '/info/refs?service=', aServiceName]
			on: WebAuthRequired do:
				[:signal |
				self requestCredentials
					ifTrue: [signal username: credentials first password: credentials second]
					ifFalse: [signal pass]]]