working-copy
ensureMaterializedMapperIsSelfIn: aWorkingCopy
	| assetFile |
	assetFile := aWorkingCopy materializedAt: self path ifAbsent: [^ self].
	self materialize: (assetFile withMapper: self) in: aWorkingCopy.