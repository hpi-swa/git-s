accessing
getText
	^ (self mapper loadAssetFromImage: self workingCopy) ifNotNil: [:plaintext | String newFrom: plaintext]