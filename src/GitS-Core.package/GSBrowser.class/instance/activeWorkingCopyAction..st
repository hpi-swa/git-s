actions
activeWorkingCopyAction: aBlock
	self activeWorkingCopy ifNil: [
		GSGUIUtilities informAndCancel: 'Please select a project first.'].
	aBlock value: self activeWorkingCopy.