actions
actionRenameActiveProject
	self activeWorkingCopyAction: [:workingCopy |
		workingCopy actionRename.
		"gets reset to nil during rename"
		self activeWorkingCopy: workingCopy].