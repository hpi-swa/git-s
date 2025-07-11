updating
when: valueBlock changesStartingAt: nowTimeStamp update: aCommitWrapper
	| current from to increment end |
	current := valueBlock value: nowTimeStamp.
	self updateTimeStamps keysAndValuesDo: [:timeStamp :set |
		(current = (valueBlock value: timeStamp - 1 second)
			and: [current ~= (valueBlock value: timeStamp)])
				ifTrue: [set add: aCommitWrapper. ^ self]].
	from := nowTimeStamp.
	to := from.
	increment := 1 day.
	end := from + 365 days. "won't ever change after that"
	[current = (valueBlock value: to)] whileTrue: [
		from := to.
		from >= end ifTrue: [^ self].
		to := to + increment.
		increment := increment + 1 day].
	[from + 1 second < to] whileTrue: [ | mid |
		mid := TimeStamp fromSeconds: (from asSeconds + to asSeconds) // 2.
		current = (valueBlock value: mid)
			ifTrue: [from := mid]
			ifFalse: [to := mid]].
	(self updateSetFor: to) add: aCommitWrapper.