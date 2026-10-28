actions
actionAddRemote
	| remote |
	remote := GSRemoteDialog getRemoteWithTitle: 'Add remote'.
	self addRemote: remote.
	^ remote