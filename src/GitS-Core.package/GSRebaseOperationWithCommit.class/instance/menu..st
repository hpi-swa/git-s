menu
menu: aMenu
	super menu: aMenu.
	aMenu add: 'Commit' subMenu:
		(self workingCopy menu: MenuMorph new forCommit: self commit).