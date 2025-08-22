batch-materializing
batchMaterialize: aCollection in: aWorkingCopy
	| codeChangeSets |
	self = GSCodeChangeSet ifFalse: [^ aCollection].
	codeChangeSets := aCollection select: [:each | each isKindOf: self].
	(MCPatch operations: (codeChangeSets gather: #operations))
		gitSApplyToLoadedWithNameLike: 'Code'.
	^ aCollection reject: [:each | each isKindOf: self]