compatibility
compatibleCommandClasses
	^ self commandClasses select: [:each | self canChangeTo: each]