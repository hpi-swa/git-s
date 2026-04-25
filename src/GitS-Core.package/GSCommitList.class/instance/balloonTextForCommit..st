ui
balloonTextForCommit: aCommit
	| commitString |
	commitString := aCommit show.
	^ (self refShortNamesForCommit: aCommit) ifEmpty: [^ commitString] ifNotEmpty: [:refs |
		'Latest commit of {1}\\{2}' gitSFormat: {refs sorted asCommaStringAnd. commitString}]