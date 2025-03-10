actions
actionImportFile
	| path reference |
	path := GSGUIUtilities chooseFileMatching: '*'.
	reference := FileSystem disk referenceTo: path.
	self importFile: reference.