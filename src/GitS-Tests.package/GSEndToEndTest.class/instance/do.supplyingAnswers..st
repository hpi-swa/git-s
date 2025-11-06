answers
do: aBlock supplyingAnswers: aCollection
	| remaining |
	remaining := aCollection.
	aBlock on: ProvideAnswerNotification do: [:notification | | caption |
		caption := notification messageText withSeparatorsCompacted.
		remaining
			detect: [:each | each first match: caption]
			ifFound: [:answer | remaining := remaining copyWithout: answer. notification resume: answer second]
			ifNone: [notification pass]].
	self assert: remaining isEmpty description: ('Expected interactions matching {1}' gitSFormat: {remaining}).