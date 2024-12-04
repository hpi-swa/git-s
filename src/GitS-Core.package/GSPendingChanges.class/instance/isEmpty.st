testing
isEmpty
	^ self isMerge not and: [GSChangeSet allEmpty: self changeSets]