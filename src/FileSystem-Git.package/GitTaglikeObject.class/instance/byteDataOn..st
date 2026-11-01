storing
byteDataOn: aStream
	self quickValidate.
	self putFixedKeysOn: aStream.
	properties ifNotNil: [ properties keysAndValuesDo: [ :key :value |
		self saveKey: key value: value to: aStream ] ].
	aStream 
		nextPut: Character lf asInteger;
		nextPutAll: (self tryEncodeString: message) asByteArray