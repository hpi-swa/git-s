credentials
getCredentialsFor: aStringOrUrl
	^ self credentials
		at: aStringOrUrl
		ifAbsentPut: [self requestCredentialsFor: aStringOrUrl]