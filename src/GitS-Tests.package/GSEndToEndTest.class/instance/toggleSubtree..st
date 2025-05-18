interactions
toggleSubtree: anObject
	| morph |
	morph := (self find: anObject) morph.
	self
		assert: (morph isKindOf: IndentingListItemMorph)
		description: 'Expected to find a tree item'.
	self
		assert: morph hasToggle
		description: 'Expected tree item to have toggle'.
	self leftClick: (GSEndToEndTarget
					morph: morph
					localPosition: morph toggleRectangle center).