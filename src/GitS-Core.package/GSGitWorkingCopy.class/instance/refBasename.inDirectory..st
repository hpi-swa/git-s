refs
refBasename: refString inDirectory: directoryString
	self assert: (refString beginsWith: directoryString).
	^ refString allButFirst: directoryString size