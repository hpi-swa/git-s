change-log
changeLogTextFor: aCollection
	| byType |
	byType := aCollection groupBy: #type.
	byType keysAndValuesRemove: [:type :items | (self shownTypes includes: type) not].
	^ GSTextUtilities
		joinTexts: ((byType withKeysSorted: [:each | self types indexOf: each] ascending) values
						collect: [:each | self changeLogTypeSectionTextFor: each])
		separatedBy: String cr, String cr