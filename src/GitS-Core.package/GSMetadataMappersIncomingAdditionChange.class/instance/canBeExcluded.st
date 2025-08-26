edge-case
canBeExcluded
	^ self changedMapperChanges allSatisfy: #isExcluded