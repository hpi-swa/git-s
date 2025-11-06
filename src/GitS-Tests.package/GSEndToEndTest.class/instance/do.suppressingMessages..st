answers
do: aBlock suppressingMessages: aCollection
	self do: aBlock supplyingAnswers: (aCollection collect: [:each | {each. true}]).