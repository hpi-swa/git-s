running
handleError: anObject
	self inform:
		('While executing {1}, the following error occured: {2}.
		Press continue to try again or delete the command.'
			gitSFormat: {self command printString. anObject}).
	^ self afterContinue: [self retry]