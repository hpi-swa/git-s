operations
removeTestData
	GSGUIUtilities suppressProgressDuring:
		[(MCPackage named: self classCategory) unload].