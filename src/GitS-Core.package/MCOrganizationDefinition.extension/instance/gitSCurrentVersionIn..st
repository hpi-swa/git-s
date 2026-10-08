*GitS-Core-Code
gitSCurrentVersionIn: aPackageInfo
	^ aPackageInfo systemCategories
		ifEmpty: [nil]
		ifNotEmpty: [:systemCategories | self class categories: systemCategories]