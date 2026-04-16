*GitS-Core-override
humanWordsForSecondsAgo: secs from: now
	"Return natural language for this date and time in the past."
	
	| date today |
	secs negative ifTrue: [^ self humanWordsForSecondsInFuture: secs negated from: now].

	secs = 0 ifTrue: [^ 'now' translated].
	secs < 2 ifTrue: [^ 'a second ago' translated].
	secs < 45 ifTrue: [^ '{1} seconds ago' translated format: {secs // 1}].
	secs < 120 ifTrue: [^ 'a minute ago' translated].
	secs < "45*60" 2700 ifTrue: [^ '{1} minutes ago' translated format: {secs // 60}].
	secs < "90*60" 5400 ifTrue: [^ 'an hour ago' translated].
	secs < "18*60*60" 64800 ifTrue: [^ '{1} hours ago' translated format: {secs // 3600}].
	date := (now - secs seconds) asDate.		"now work with dates"
	today := now asDate.
	date > (today subtractDays: 2) ifTrue: [^ 'yesterday' translated].
	date > (today subtractDays: 8) ifTrue: [
		^ date asWeek = today asWeek
			ifTrue: ['this {1}' translated format: {date dayOfWeekName}]
			ifFalse: ['last {1}' translated format: {date dayOfWeekName}]].
	date > (today subtractDays: 13) ifTrue: [^ 'a week ago' translated].
	date > (today subtractDays: 28) ifTrue: [
		^ '{1} weeks ago' translated format: {(today subtractDate: date) // 7}].
	date > (today subtractDays: 45) ifTrue: [^ 'a month ago' translated].
	date > (today subtractDays: 300) ifTrue: [
		^ date year = today year
			ifTrue: ['this {1}' translated format: {date monthName}]
			ifFalse: ['last {1}' translated format: {date monthName}]].
	^ date monthName, ', ', date year printString

"Example
#(0.5 30 62 130 4000 10000 60000 90000 345600 864000 1728000 3456000 17280000 34560000 345600000) 
		collect: [:ss | Time humanWordsForSecondsAgo: ss].
"
