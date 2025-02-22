sar
addAssetsFileToSar: aSarBuilder
	| member |
	self addGitSInstallLineToSar: aSarBuilder.
	member := aSarBuilder
					addString: (self assetsFileHeaderForSar: aSarBuilder)
					at: self sarAssetsFileName.
	aSarBuilder
		addPreambleLine:
			('(self memberNamed: {1}) contentStream text; fileInFor: self announcing: ''Loading assets''.'
				format: {self sarAssetsFileName storeString});
		addPostAddHook:
			[member contents: (aSarBuilder fixupChunkTerminatorsIn: member contents)].
	^ member