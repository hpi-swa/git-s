fileIn/Out
scanFrom: aStream
	| parts topic heading |
	parts := aStream upTo: $;.
	parts := parts splitBy: ':'.
	parts size caseOf: {
		[1] -> [topic := parts first. heading := nil].
		[2] -> [topic := parts first. heading := parts second].
	}.
	^ self new
		topic: topic asSymbol;
		heading: (heading ifNotNil: #asSymbol);
		yourself