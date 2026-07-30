rebase
addRebaseCommandAfter: commitObject type: typeString supplyingAnswers: answerCollection
	self leftClick: (self findInRebaseWindow: commitObject).
	self
		do: [self leftClick: 'Add']
		supplyingAnswers: {{'Choose the new command type:'. typeString}}, answerCollection.