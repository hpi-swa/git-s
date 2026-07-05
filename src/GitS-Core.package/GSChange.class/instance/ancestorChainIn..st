accessing
ancestorChainIn: aChangesTree
	| chain |
	chain := OrderedCollection with: aChangesTree.
	self path allButLastDo: [:each |
		chain addLast: (chain last treeAt: each)].
	chain addLast: self.
	chain removeFirst.
	^ chain