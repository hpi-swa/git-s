ui
assetTreeChildrenOf: aPath
	| basenames |
	basenames := Set new.
	self mappers do: [:each |
		(aPath contains: each path) ifTrue: [
			basenames add: (each path at: aPath size + 1)]].
	^ basenames sorted collect: [:each | aPath / each]