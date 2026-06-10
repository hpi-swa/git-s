accessing
updateChangesTree
	| oldChanges oldChangesByUniqueKey |
	oldChanges := self changesTree descendants.
	oldChangesByUniqueKey := Dictionary new.
	oldChanges do: [:each |
		self
			assert: (oldChangesByUniqueKey includesKey: each uniqueKey) not
			description: 'uniqueKeys should be unique'.
		oldChangesByUniqueKey at: each uniqueKey put: each].
	self changesTree
		removeAllDescendants;
		addAll: self changes;
		removeEmptyDescendantTrees.
	self changes do: [:each |
		oldChangesByUniqueKey
			at: each uniqueKey
			ifPresent: [:oldChange | each refresh: oldChange]].
	self changed: #rootNodes.