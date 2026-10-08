accessing
remainingGroupsFrom: aCollection
	self orderSelector ifNil: [^ self remainingGroups: {aCollection copy}].
	self remainingGroups: (((aCollection groupBy: self orderSelector) associations
								sorted: #key ascending)
								collect: #value).