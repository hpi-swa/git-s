removing
keepOnly: aCollection
	self children:
		((self children intersection: aCollection)
			collect: [:each | each keepOnly: aCollection]).