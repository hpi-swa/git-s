accessing
isRefreshable: aBoolean
	isRefreshable := aBoolean.
	self isRefreshable ifTrue: [
		self assert: self canRefresh.
		self operation disableBatching "need to fetch from actual image to refresh"].