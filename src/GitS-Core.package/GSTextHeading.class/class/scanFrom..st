fileIn/Out
scanFrom: aStream
	^ self new
		key: (aStream upTo: $;);
		yourself