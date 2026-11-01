actions
accept
	self checkValidRemote ifFalse: [^ self].
	self
		accepted: true;
		close.