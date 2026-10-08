building suites
packageInfosToBeTested
	^ PackageInfo allPackages select: [:each |
		(each name beginsWith: 'GitS-') or: [each name = 'BaselineOfGitS']]