actions-private
dialogIsClosing
	(self actionHasRun not and: [self actionBlock notNil]) ifTrue: [self cancel].