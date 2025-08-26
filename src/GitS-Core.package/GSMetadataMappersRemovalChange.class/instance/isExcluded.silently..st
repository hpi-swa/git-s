updating
isExcluded: excludedBoolean silently: silentBoolean
	(excludedBoolean not and: [self canBeIncluded not])
		ifFalse: [^ super isExcluded: excludedBoolean silently: silentBoolean].
	self inform:
		('This removal cannot be included yet,
		since some changes to the {1} are either excluded
		or not yet resolved to be removals.' gitSFormat: {self changedMapper name}).