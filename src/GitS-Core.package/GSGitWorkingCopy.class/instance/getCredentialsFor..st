credentials
getCredentialsFor: aStringOrUrl
	^ self credentials
		at: aStringOrUrl
		ifAbsentPut: [
			self class
				findCredentialsFor: aStringOrUrl
				ifNone: [self requestCredentialsFor: aStringOrUrl]]