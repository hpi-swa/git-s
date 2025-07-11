testing
canRefresh
	^ self isRefreshable and: [self changeSetsBlock notNil]