types
typeLabels
	^ (self typeSpecs groupsCollect: [:type :label :show | type -> label]) as: Dictionary