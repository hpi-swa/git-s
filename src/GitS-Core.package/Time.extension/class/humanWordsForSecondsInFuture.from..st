*GitS-Core-override
humanWordsForSecondsInFuture: secs from: now
	"Return natural language for this date and time in the future."

	| date today |
	secs negative ifTrue: [^ self humanWordsForSecondsAgo: secs negated from: now].
	
	secs = 0 ifTrue: [^ 'now' translated].
	secs < 2 ifTrue: [^ 'in a second' translated].
	secs < 45 ifTrue: [^ 'in {1} seconds' translated format: {secs // 1}].
	secs < 120 ifTrue: [^ 'in a minute' translated].
	secs < "45*60" 2700 ifTrue: [^ 'in {1} minutes' translated format: {secs // 60}].
	secs < "90*60" 5400 ifTrue: [^ 'in an hour' translated].
	secs < "18*60*60" 64800 ifTrue: [^ 'in {1} hours' translated format: {secs // 3600}].
	date := (now + secs seconds) asDate.		"now work with dates"
	today := now asDate.
	date < (today addDays: 2) ifTrue: [^ 'tomorrow' translated].
	date < (today addDays: 8) ifTrue: [
		^ date asWeek = today asWeek
			ifTrue: ['this {1}' translated format: {date dayOfWeekName}]
			ifFalse: ['next {1}' translated format: {date dayOfWeekName}]].
	date < (today addDays: 13) ifTrue: [^ 'in a week' translated].
	date < (today addDays: 28) ifTrue: [
		^ 'in {1} weeks' translated format: {(date subtractDate: today) // 7}].
	date < (today addDays: 45) ifTrue: [^ 'in a month' translated].
	date < (today addDays: 300) ifTrue: [
		^ date year = today year
			ifTrue: ['this {1}' translated format: {date monthName}]
			ifFalse: ['next {1}' translated format: {date monthName}]].
	^ date monthName, ', ', date year printString

"Example
#(0.5 30 62 130 4000 10000 60000 90000 345600 864000 1728000 3456000 17280000 34560000 345600000) 
		collect: [:ss | Time humanWordsForSecondsInFuture: ss].
"