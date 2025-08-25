accessing
updateChangesTree
	| oldChanges oldChangesByUniqueKey |
	oldChanges := self changesTree allChildren.
	oldChangesByUniqueKey := Dictionary new.
	oldChanges do: [:each |
		self
			assert: (oldChangesByUniqueKey includesKey: each uniqueKey) not
			description: 'uniqueKeys should be unique'.
		oldChangesByUniqueKey at: each uniqueKey put: each].
	self changesTree
		removeAllChildren;
		addAll: self changes;
		removeAllEmptyTrees.
	self changes do: [:each |
		oldChangesByUniqueKey
			at: each uniqueKey
			ifPresent: [:oldChange | each refresh: oldChange]].
	self changed: #rootNodes.