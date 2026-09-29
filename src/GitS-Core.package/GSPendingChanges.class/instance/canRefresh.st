testing
canRefresh
	^ self isRefreshable and: [self changesBlock notNil]