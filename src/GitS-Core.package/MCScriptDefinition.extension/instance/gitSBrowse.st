*GitS-Core-Code
gitSBrowse
	MCWorkingCopyBrowser new
		workingCopy: (MCWorkingCopy forPackageNamed: self packageName);
		editScript: self scriptSelector.