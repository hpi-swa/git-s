actions
actionAddPackage
	| packageInfo conflictingPackages mapperClass |
	packageInfo := PackageInfo new packageName: self selectedPackageName; yourself.
	conflictingPackages := self mappedPackageList select: [:each |
								packageInfo includesSystemCategory: each].

	conflictingPackages ifNotEmpty: [
		GSGUIUtilities confirmOrCancel:
			('To add package {1}, we will first remove {2},
			because the new package is a prefix/super package for these.
			(Otherwise the package contents will be duplicated)'
				withoutLineEndings withBlanksCondensed
				format: {
					self selectedPackageName printString.
					conflictingPackages joinSeparatedBy: ', '})].
	
	mapperClass := self mapperClassForNewPackage.
	conflictingPackages do: [:each | self removePackage: each].
	self workingCopy addMapper:
		(mapperClass
			package: (MCPackage named: self selectedPackageName)
			path: self commonPackagePathPrefix).