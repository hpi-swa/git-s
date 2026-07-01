menu
commitsMenu: aMenu
	^ (self workingCopyOrNil ifNil: [^ aMenu])
		menu: aMenu forCommit: self activeCommit