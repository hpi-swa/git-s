ui
assetTreeChildrenOf: aPath
	| basenames |
	basenames := (self mappers
		select: [:each | aPath contains: each path])
		collect: [:each | each path at: aPath size + 1] as: Set.
	^ basenames sorted collect: [:each | aPath / each]