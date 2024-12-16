ref-tree
addRefTreeRootsTo: aRefTree references: aCollection
	aRefTree ensureDirectory: self branchesBaseName label: 'local branches'.
	self remoteNames do: [:each |
		aRefTree
			ensureDirectory: self remoteRefBaseName, each, $/
			label: ('remote branches on {1}' format: {each printString})].
	aRefTree
		ensureDirectory: self gitBranchesBaseName label: 'external branches';
		ensureDirectory: 'refs/tags/' label: 'tags'.
	self addOtherRefsRootTo: aRefTree references: aCollection.