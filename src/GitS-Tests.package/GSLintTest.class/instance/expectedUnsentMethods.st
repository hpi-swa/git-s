expected-unsent
expectedUnsentMethods
	^ Array streamContents: [:stream |
		self packageInfo actualMethodsDo: [:each |
			(each hasPragma: #linterIgnoreUnsent)
				ifTrue: [stream nextPut: each]]]