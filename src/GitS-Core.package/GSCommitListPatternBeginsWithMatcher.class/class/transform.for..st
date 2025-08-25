compiling
transform: sourceString for: matchString
	sourceString size < matchString size ifTrue: [^ nil].
	^ sourceString first: matchString size