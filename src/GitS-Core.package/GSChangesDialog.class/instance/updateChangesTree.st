accessing
updateChangesTree
	| oldChanges oldChangesByPath |
	oldChanges := self changesTree allChildren.
	oldChangesByPath := Dictionary new.
	oldChanges do: [:each |
		self
			assert: (oldChangesByPath includesKey: each path) not
			description: 'change paths should be unique'.
		oldChangesByPath at: each path put: each].
	self changesTree
		removeAllChildren;
		addAll: self changes;
		removeAllEmptyTrees.
	self changes do: [:each |
		oldChangesByPath
			at: each path
			ifPresent: [:oldChange | each refresh: oldChange]].
	self changed: #rootNodes.