private
replaceUIManagerWith: aUIManager during: aBlock
	| project original |
	project := Project current.
	original := project uiManager.
	^ [project instVarNamed: 'uiManager' put: aUIManager.
	aBlock value]
		ensure: [project instVarNamed: 'uiManager' put: original]