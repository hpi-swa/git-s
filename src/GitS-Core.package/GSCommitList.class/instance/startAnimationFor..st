generating
startAnimationFor: aGenerator
	| done |
	self hasExpression ifFalse: [^ self].
	done := [aGenerator isStopped].
	self actualDependents
		select: [:each | (each isKindOf: PluggableTextMorph) and: [each getTextSelector = #expression]]
		thenDo: [:each | self startAnimationOn: each done: done].