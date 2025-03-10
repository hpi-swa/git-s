actions
actionEditRemote
	| remote newRemote |
	self selectedRemoteName ifNil: [^ self].
	remote := self selectedRemote.
	newRemote := GSRemoteDialog
						getRemoteWithTitle: 'Edit remote'
						name: remote name
						url: remote url.
	newRemote name = remote name ifFalse: [
		"only remove the remote if the name changes, otherwise the refs can be kept"
		self unitOfWork removeRemoteNamed: remote name].
	self addRemote: newRemote.