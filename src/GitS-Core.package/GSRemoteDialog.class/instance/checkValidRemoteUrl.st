validation
checkValidRemoteUrl
	self remoteUrl ifEmpty: [self inform: 'URL cannot be empty'].
	^ self remoteUrl notEmpty