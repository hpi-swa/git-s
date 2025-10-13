accessing
sources
	self version ifNil: [^ nil].
	^ sources ifNil: [sources := self computeSources]