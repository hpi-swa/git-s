accessing
versionsDictionary
	^ OrderedDictionary new
		at: #current put: self current;
		at: #incoming put: self incoming;
		yourself