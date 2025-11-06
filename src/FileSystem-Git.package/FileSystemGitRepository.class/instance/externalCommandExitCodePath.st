git porcelain - external
externalCommandExitCodePath
	| reference path delimiter |
	reference := self externalCommandExitCodeReference.
	path := reference printString.
	delimiter := reference filesystem delimiter asString.
	^ (reference path isAbsolute ==> [path beginsWith: delimiter])
		ifTrue: [path]
		ifFalse: [delimiter, path]