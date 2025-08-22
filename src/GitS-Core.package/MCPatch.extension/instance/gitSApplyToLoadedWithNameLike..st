*GitS-Core-diff-patching
gitSApplyToLoadedWithNameLike: aString
	| loader |
	loader := MCPackageLoader new.
	self applyTo: loader.
	loader loadWithNameLike: aString.