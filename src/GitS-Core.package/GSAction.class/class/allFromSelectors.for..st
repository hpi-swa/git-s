instance creation
allFromSelectors: aCollection for: receiverObject
	^ aCollection collect: [:each | self fromSelectors: each for: receiverObject]