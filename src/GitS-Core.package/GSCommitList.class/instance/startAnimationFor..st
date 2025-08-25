generating
startAnimationFor: aProcess
	| morph |
	self hasExpression ifFalse: [^ self].
	morph := self actualDependents
		detect: [:each | (each isKindOf: PluggableTextMorph) and: [each getTextSelector = #expression]]
		ifNone: [^ self].
	((morph ownerThatIsA: SystemWindow) ifNil: morph world)
		addMorphInLayer: (GSLoadingAnimationMorph new
								morph: morph;
								done: [self generatingProcess ~= aProcess or: [aProcess isTerminated]];
								yourself).