instance creation
nameFromURL: aString
	| path name |
	path := aString splitBy: '/'.
	name := (path
				reversed
				collect: [:each | self withoutGitSuffix: each])
				detect: #notEmpty ifNone: [''].
	(name isEmpty or: [self isNameRegistered: name])
		ifTrue: [^ self requestUnregisteredNameFrom: name].
	^ name