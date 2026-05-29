joining
joinTexts: aCollection separatedBy: aStringOrText
	^ Text streamContents: [:stream |
		aCollection do: [:each | stream nextPutAll: each] separatedBy: [stream nextPutAll: aStringOrText]]