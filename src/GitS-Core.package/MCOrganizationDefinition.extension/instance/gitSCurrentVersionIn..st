*GitS-Core-Code
gitSCurrentVersionIn: aPackageInfo
	^ aPackageInfo systemCategories
		ifEmpty: [nil]
		ifNotEmpty: [:categories | self class categories: categories]