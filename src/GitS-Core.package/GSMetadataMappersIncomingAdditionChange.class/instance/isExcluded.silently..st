accessing
isExcluded: excludedBoolean silently: silentBoolean
	(excludedBoolean and: [self canBeExcluded not])
		ifFalse: [^ super isExcluded: excludedBoolean silently: silentBoolean].
	(self confirm: ('Excluding this change will also exclude all changes to {1}. Is that ok?'
					gitSFormat: {self changedMapper name})) ifFalse: [^ self].
	super isExcluded: true silently: true.
	self changedMapperChanges do: #excludeSilently.
	silentBoolean ifFalse: [GSGUIUtilities allOf: (self changedMapperChanges copyWith: self) changed: #isExcluded].