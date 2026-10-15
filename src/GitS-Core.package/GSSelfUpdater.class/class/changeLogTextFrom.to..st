change-log
changeLogTextFrom: oldVersionString to: newVersionString
	^ GSChangeLogItem changeLogTextFor:
		(self
			fetchChangeLogFrom: oldVersionString
			to: newVersionString
			ifFail: [^ 'Unable to fetch change log' asText])