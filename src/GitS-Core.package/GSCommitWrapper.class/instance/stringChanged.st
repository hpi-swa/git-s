updating
stringChanged
	"IndentingListItemMorph do not have a dependents-based mechanism
	to cause them to update their contents (yet?)."
	self dependents
		select: [:each | each isKindOf: IndentingListItemMorph]
		thenDo: [:each | each contents: each getLabel].