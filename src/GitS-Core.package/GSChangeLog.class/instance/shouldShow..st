testing
shouldShow: typeString
	^ self shouldShowAllTypes or: [self basicShouldShow: typeString]