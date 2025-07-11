accessing
isRefreshable: aBoolean
	isRefreshable := aBoolean.
	self isRefreshable ifTrue: [self assert: self canRefresh].