checking
okToRefresh
	self canRefresh ifFalse: [^ false].
	self dialog ifNil: [^ true].
	^ self dialog okToClose