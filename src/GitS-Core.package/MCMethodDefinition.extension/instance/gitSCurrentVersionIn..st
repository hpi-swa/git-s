*GitS-Core-Code
gitSCurrentVersionIn: aPackageInfo
	| reference |
	self actualClass ifNil: [^ nil].
	reference := self asMethodReference.
	reference isValid ifFalse: [^ nil].
	^ reference asMethodDefinition