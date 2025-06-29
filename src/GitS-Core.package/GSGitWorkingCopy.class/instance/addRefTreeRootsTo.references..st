ref-tree
addRefTreeRootsTo: aRefTree references: aCollection
	aRefTree
		ensureDirectory: self branchesBaseName
		label: 'local branches'
		tooltip: 'Local branches are those that exist in this image.
				They are not visible from your system''s git unless you make them available
				as a separate external branch via the context menu.' gitSFormat
		order: 1.
	self remoteNames do: [:each |
		aRefTree
			ensureDirectory: self remoteRefBaseName, each, $/
			label: ('remote branches on {1}' format: {each printString})
			tooltip: 'These branches exist on the remote.
					You cannot directly change these branches,
					but you can create local branches from them via the context menu
					and then push your new commits to the remote.' gitSFormat
			order: 2].
	aRefTree
		ensureDirectory: self gitBranchesBaseName
		label: 'external branches'
		tooltip: 'External branches are those available via your system''s git.
				You can create local branches from these to edit in the image
				or merge these into your local branches.'	 gitSFormat
		order: 3;
		ensureDirectory: 'refs/tags/'
		label: 'tags'
		tooltip: 'Tags are immovable references to commits.'
		order: 4.
	self addOtherRefsRootTo: aRefTree references: aCollection.