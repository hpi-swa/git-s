initialize-release
createMode: aCommitListModeClass
	| mode |
	mode := aCommitListModeClass new
				commitList: self;
				yourself.
	mode when: #changed send: #modeChanged: to: self with: mode.
	^ mode