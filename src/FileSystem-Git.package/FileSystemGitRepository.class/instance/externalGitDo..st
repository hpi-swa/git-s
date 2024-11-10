git porcelain - external
externalGitDo: aCommandLineSuffix
	self externalCommand: ('{1} -C "{2}" {3}' format: {
		self gitExecutable.
		repository workingDir pathName.
		aCommandLineSuffix}).