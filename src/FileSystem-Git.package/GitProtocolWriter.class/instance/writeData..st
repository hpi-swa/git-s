private
writeData: aString
	stream nextPutAll: aString asByteArray.
	^ aString