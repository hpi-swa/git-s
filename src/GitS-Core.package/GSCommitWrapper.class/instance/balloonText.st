accessing
balloonText
	| commitString |
	commitString := self commit show.
	^ self refShortNames ifEmpty: [^ commitString] ifNotEmpty: [:refs |
		'Latest commit of {1}\\{2}' gitSFormat: {refs sorted asCommaStringAnd. commitString}]