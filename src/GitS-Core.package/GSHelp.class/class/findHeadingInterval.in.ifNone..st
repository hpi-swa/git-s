navigation
findHeadingInterval: aSymbol in: aText ifNone: aBlock
	aText runs intervalsAndValuesDo: [:interval :attributes |
		attributes
			detect: [:attribute |
				(attribute isKindOf: GSTextHeading)
					and: [attribute key = aSymbol]]
			ifFound: [:attribute | ^ interval]].
	^ aBlock value