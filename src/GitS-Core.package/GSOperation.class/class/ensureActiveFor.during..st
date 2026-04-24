activation
ensureActiveFor: aWorkingCopy during: aBlock
	(self activeFor: aWorkingCopy) ifNotNil: [^ aBlock value].
	^ (self for: aWorkingCopy) activateDuring: aBlock