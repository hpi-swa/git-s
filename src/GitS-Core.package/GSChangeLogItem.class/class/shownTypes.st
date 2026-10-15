types
shownTypes
	^ ((self typeSpecs
		groupsCollect: [:type :label :show | type -> show])
		select: [:each | each value])
		collect: [:each | each key]