accessing
activeWorkingCopyOrCancel
	^ self activeWorkingCopy ifNil: [
		GSGUIUtilities informAndCancel: 'Please select a project first.']