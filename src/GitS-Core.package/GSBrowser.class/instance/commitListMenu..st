menu
commitListMenu: aMenu
	^ (self activeWorkingCopy ifNil: [^ aMenu])
		menu: aMenu forCommit: self activeCommit