instance creation
nameFromURL: aString
	| path result |
	path := aString splitBy: '/'.
	result := (path
				reversed
				collect: [:each | self withoutGitSuffix: each])
				detect: #notEmpty ifNone: [''].
	(result isEmpty or: [self isNameRegistered: result])
		ifTrue: [^ self requestUnregisteredNameFrom: result].
	^ result