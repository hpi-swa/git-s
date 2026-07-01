accessing
createCommitList
	^ GSCommitList new
		browser: self;
		when: #activeCommitChanged send: #activeCommitChanged to: self;
		yourself