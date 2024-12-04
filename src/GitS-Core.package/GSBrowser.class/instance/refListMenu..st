menu
refListMenu: aMenu
	^ (self activeWorkingCopy ifNil: [^ aMenu])
		menu: aMenu forRef: self activeRef