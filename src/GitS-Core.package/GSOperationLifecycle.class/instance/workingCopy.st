accessing
workingCopy
	^ self driver perform: (self workingCopySelector ifNil: [^ nil])