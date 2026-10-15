change-log
previewChangeLogFor: newVersionString
	self showChangeLogDuring: [
		self showChangeLogFrom: self installedVersion to: newVersionString].