*GitS-Core-Code
gitSCurrentVersionIn: aPackageInfo
	| reference |
	reference := self asMethodReference.
	reference isValid ifFalse: [^ nil].
	^ reference asMethodDefinition