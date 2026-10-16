ui
text
	| byType |
	byType := self items groupBy: #type.
	byType keysAndValuesRemove: [:type :itemsForType | (self shouldShow: type) not].
	^ GSTextUtilities
		joinTexts: ((byType withKeysSorted: [:each | GSChangeLogItem types indexOf: each] ascending) values
						collect: [:each | self sectionTextFor: each])
		separatedBy: String cr, String cr