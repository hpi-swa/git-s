as yet unclassified
readFrom: aStream
	^ self new
		previousHexHash: (aStream upTo: Character space);
		nextHexHash: (aStream upTo: Character space);
		stamp: (GitStamp fromString: (aStream upTo: Character tab));
		message: aStream upToEnd;
		yourself