accessing
ancestorChainIn: aChangesTree
	self assert: self root = aChangesTree.
	^ self ancestorChain