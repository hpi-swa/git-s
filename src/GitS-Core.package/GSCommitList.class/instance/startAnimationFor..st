generating
startAnimationFor: aProcess
	| done |
	self hasExpression ifFalse: [^ self].
	done := [self generatingProcess ~= aProcess or: [aProcess isTerminated]].
	self actualDependents
		select: [:each | (each isKindOf: PluggableTextMorph) and: [each getTextSelector = #expression]]
		thenDo: [:each | self startAnimationOn: each done: done].