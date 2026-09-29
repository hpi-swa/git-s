actions-refs
actionOpenReflogOn: aString
	GSReflogBrowser new
		workingCopy: self;
		ref: aString;
		open.