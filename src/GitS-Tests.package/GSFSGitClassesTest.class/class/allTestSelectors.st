accessing
allTestSelectors
	^ super allTestSelectors copyWithoutAll: #(testNew testClassComment)