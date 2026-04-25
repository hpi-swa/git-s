ui
iconForCommit: aCommit
	^ (self refShortNamesForCommit: aCommit)
		ifEmpty: [ToolIcons blank] ifNotEmpty: [ToolIcons primitive]