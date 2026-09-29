sar
batchAdd: aCollection toSar: aSarBuilder
	self
		addAssetFiles: (aCollection
							collect: [:each | each loadAssetFileFromImage: aSarBuilder workingCopy]
							thenSelect: #notNil)
		toSar: aSarBuilder.