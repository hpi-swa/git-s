actions-private
action
	self assert: self actionHasRun not.
	self actionBlock value.
	self actionHasRun: true.
	^ self done