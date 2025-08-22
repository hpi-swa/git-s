sar
batchAdd: aCollection toSar: aSarBuilder
	self = GSAssetMapper ifFalse: [^ aCollection].
	self
		addAssetFiles: ((aCollection select: [:each | each isKindOf: self])
							collect: [:each | each loadAssetFileFromImage: aSarBuilder workingCopy]
							thenSelect: #notNil)
		toSar: aSarBuilder.
	^ aCollection reject: [:each | each isKindOf: self]