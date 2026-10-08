building suites
packageInfosToBeTested
	^ PackageInfo allPackages select: [:package |
		#('FileSystem-Git' 'FileSystemGit-' 'VersionControl') anySatisfy: [:prefix |
			package name beginsWith: prefix]]