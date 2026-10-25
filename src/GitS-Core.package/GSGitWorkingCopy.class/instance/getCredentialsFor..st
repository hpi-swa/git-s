credentials
getCredentialsFor: aStringOrUrl
	^ self credentials
		at: aStringOrUrl
		ifAbsentPut: [
			GSExternalSettings credentials associations
				detect: [:assoc | assoc key match: aStringOrUrl asString]
				ifFound: [:assoc | assoc value]
				ifNone: [
					self class
						findCredentialsFor: aStringOrUrl
						ifNone: [self requestCredentialsFor: aStringOrUrl]]]