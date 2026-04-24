running
run
	self inform: ('The rebase hit a {1} command. Press continue when you are ready.'
					format: {self commandName printString}).
	^ self afterContinue: [self nextCommand]