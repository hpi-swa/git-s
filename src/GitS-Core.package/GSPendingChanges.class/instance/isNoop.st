testing
isNoop
	^ self isMerge not and: [GSChangeSet allNoop: self changeSets]