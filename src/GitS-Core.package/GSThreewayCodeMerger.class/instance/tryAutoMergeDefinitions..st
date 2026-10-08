auto-merging
tryAutoMergeDefinitions: aVersionMerge
	| allSources mergedDefinition mergedSources stamp |
	(aVersionMerge anySatisfy: #isNil) ifTrue: [^ false].
	allSources := aVersionMerge collect: #gitSSources.
	stamp := Utilities changeStamp.
	mergedSources := (1 to: allSources someVersion size) collect: [:sourceIndex |
		(allSources collect: [:each | (each at: sourceIndex) string]) stringMergeIfConflict: [:conflict |
			(allSources someVersion at: sourceIndex) isTimeStamp ifTrue: [stamp] ifFalse: [^ false]]].
	mergedDefinition := aVersionMerge current
		gitSCopyWithSources: mergedSources
		notifying: nil
		ifFail: [^ false].
	self addOperation: (MCModification of: aVersionMerge current to: mergedDefinition).
	^ true