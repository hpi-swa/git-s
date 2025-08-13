*GitS-Core-Code
gitSCurrentVersionIn: aPackageInfo
	(aPackageInfo perform: self class gitSHasScriptSelector) ifFalse: [^ nil].
	^ self class from: aPackageInfo