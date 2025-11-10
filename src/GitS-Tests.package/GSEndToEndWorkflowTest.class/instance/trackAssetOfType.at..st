assets
trackAssetOfType: typeString at: pathString
	self withAssetBrowser: [
		self
			do: [self leftClick: 'Add empty asset']
			supplyingAnswers: {
				{'Asset type:'. typeString}.
				{'Path of the asset in the repository:'. pathString}}].