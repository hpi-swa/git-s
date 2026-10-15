change-log
showChangeLogFrom: oldVersionString to: newVersionString
	self wantsChangeLog ifFalse: [^ self].
	self showChangeLogText: (self changeLogTextFrom: oldVersionString to: newVersionString).