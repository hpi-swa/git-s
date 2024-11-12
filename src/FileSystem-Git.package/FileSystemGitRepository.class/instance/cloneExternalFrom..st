git porcelain
cloneExternalFrom: aStringOrUrl
	| directory children |
	directory := repository workingDir.
	children := directory children.
	(children isEmpty or: [children size = 1 and: [children first basename = '.git']])
		ifFalse: [^ self error: 'Target directory is not empty'].
	directory deleteAll.
	self externalCommand: ('{1} clone "{2}" "{3}"' format: {
		self gitExecutable.
		aStringOrUrl.
		directory pathName}).