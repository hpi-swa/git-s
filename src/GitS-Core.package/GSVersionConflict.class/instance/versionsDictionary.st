accessing
versionsDictionary
	^ super versionsDictionary
		at: #resolution put: self resolution;
		yourself