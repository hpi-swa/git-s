adding
ensure: aString
	| relative segments |
	aString = self ref ifTrue: [^ self].
	relative := self relative: aString.
	segments := relative splitBy: '/'.
	segments size = 1 ifTrue: [^ (self catchAllOr: [self]) ensureRef: aString].
	segments size - 1 to: 1 by: -1 do: [:index |
		self
			findTree: (self ref, ((segments first: index) joinSeparatedBy: '/')), $/
			ifFound: [:tree | ^ tree ensure: aString]
			ifNone: []].
	^ (self catchAllOr: [self addTree: self ref, segments first, $/])
		ensure: aString