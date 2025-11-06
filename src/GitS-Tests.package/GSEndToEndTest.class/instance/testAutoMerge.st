tests
testAutoMerge
	self
		testMergeBase: [self compileMethod: 'method\"old comment"\"untouched"\^ 42' withCRs]
		checkBase: [self checkMethod: 'method\"old comment"\"untouched"\^ 42' withCRs]
		incoming: [self compileMethod: 'method\"new comment"\"untouched"\^ 42' withCRs]
		current: [self compileMethod: 'method\"old comment"\"untouched"\^ Float pi' withCRs]
		checkDialog: [self leftClick: 'method'; find: 'method\"old comment"\"new comment"\"untouched"\^ Float pi' withCRs]
		checkMerged: [self checkMethod: 'method\"new comment"\"untouched"\^ Float pi' withCRs].