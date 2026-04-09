updating
findFirstChangeOf: valueBlock between: fromTimeStamp and: toTimeStamp
	| from to fromValue |
	from := fromTimeStamp.
	to := toTimeStamp.
	fromValue := valueBlock value: from.
	fromValue = (valueBlock value: to) ifTrue: [^ nil].
	[from + 1 second < to] whileTrue: [ | mid |
		mid := TimeStamp fromSeconds: (from asSeconds + to asSeconds) // 2.
		fromValue = (valueBlock value: mid)
			ifTrue: [from := mid]
			ifFalse: [to := mid]].
	^ to