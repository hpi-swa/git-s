*GitS-Core-Code
gitSCurrentVersionIn: aPackageInfo
	| trait |
	trait := (Environment current classNamed: baseTrait) ifNil: [^ nil].
	(trait hasClassTrait
		and: [trait classTrait hasTraitComposition
		and: [trait classTrait traitComposition isEmpty not]]) ifFalse: [^ nil].
	^ trait classTrait asMCDefinition