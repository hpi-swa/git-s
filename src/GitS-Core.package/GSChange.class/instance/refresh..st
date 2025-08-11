refreshing
refresh: aChange
	(self canRefresh: aChange) ifFalse: [^ self].
	self preserveStateWhileRefreshing: aChange.
	aChange becomeForward: self.