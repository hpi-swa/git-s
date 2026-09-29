ui
assetTreeChildrenOf: aPath
	| basenames |
	basenames := (self mappersInDirectory: aPath)
		collect: [:each | each path at: aPath size + 1] as: Set.
	^ basenames sorted collect: [:each | aPath / each]