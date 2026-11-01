credentials
getCredentialsFor: aStringOrUrl
	^ self credentials
		at: aStringOrUrl
		ifAbsentPut: [
			GSExternalSettings credentials associations
				detect: [:assoc | assoc key match: aStringOrUrl asString]
				ifFound: [:assoc |
					^ assoc value
					"Do not silently store credentials in the image, so you can still share it without your secrets. This is one of the benefits of the ExternalSettings framework and also used by Monticello."]
				ifNone: [
					self class
						findCredentialsFor: aStringOrUrl
						ifNone: [self requestCredentialsFor: aStringOrUrl]]]