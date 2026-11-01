private
lookupTreeAt: aRelativePath startingFrom: startTree
	|tree|
	tree := startTree.
	"walk down the tree directory by directory"
	aRelativePath do: [ :segment |
		tree := tree
			entryAt: segment
			ifPresent: [ :entry | 
				"let's try to load the entry, might still be that it has been freshly added by a previous processCreation send"
				entry objectIfAbsent: [nil]]
			ifAbsent: [ ^ nil ] ].
	^ tree