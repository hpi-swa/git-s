accessing
createCommitList
	^ GSCommitList new
		browser: self;
		addDependent: self;
		yourself