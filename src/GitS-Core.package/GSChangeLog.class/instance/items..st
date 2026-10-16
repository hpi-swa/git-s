accessing
items: aCollection
	items := aCollection.
	self shouldShowAllTypes: (self items noneSatisfy: [:each | self shouldShow: each type]).