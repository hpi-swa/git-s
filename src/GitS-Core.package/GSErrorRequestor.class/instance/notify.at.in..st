requestor protocol
notify: aString at: anInteger in: aStream
	| index |
	index := anInteger clampLow: 1 high: self expression size.
	SyntaxErrorNotification signal: (self expression first: index), aString, (self expression allButFirst: index).