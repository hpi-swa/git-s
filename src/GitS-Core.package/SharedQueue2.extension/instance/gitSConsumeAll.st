*GitS-Core
gitSConsumeAll
	^ monitor critical: [ | contents |
		contents := items copy.
		items removeAll.
		contents]