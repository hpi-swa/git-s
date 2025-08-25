compiling
transform: sourceString for: matchString
	sourceString size < matchString size ifTrue: [^ nil].
	^ sourceString last: matchString size