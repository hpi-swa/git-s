change-log
showChangeLogFrom: oldVersionString to: newVersionString
	self wantsChangeLog ifFalse: [^ self].
	GSChangeLog openWithItems:
		(self
			fetchChangeLogFrom: oldVersionString
			to: newVersionString
			ifFail: [^ self inform: 'Unable to fetch change log']).