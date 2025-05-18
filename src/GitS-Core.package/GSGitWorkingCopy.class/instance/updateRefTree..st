ref-tree
updateRefTree: aRefTree
	| keep references |
	references := self allReferencesAndSymbolicRefTargets.
	self addRefTreeRootsTo: aRefTree references: references.
	keep := Set new.
	references do: [:each | | member |
		member := aRefTree ensure: each.
		keep addAll: member withAllParents].
	aRefTree keepOnly: keep.