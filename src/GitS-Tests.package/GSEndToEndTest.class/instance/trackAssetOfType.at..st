assets
trackAssetOfType: typeString at: aCollection
	self withAssetBrowser: [
		self
			do: [self leftClick: 'Add empty asset']
			supplyingAnswers: {
				{'Asset type:'. typeString}.
				{'Path of the asset in the repository:'. (aCollection collect: [:each | '/', each]) join}}].