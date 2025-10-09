refreshing
preserveStateWhileRefreshing: aChange
	aChange isExcluded ifTrue: [self excludeSilently "don't trigger a rerender in the middle of refreshing"].