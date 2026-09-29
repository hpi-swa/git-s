batching
assertNoSubclassImplementsBatching: aMapperClass
	aMapperClass allSubclassesDo: [:subclass |
		self
			assert: (self implementsBatching: subclass) = #none
			description: ('{1} should not implement {2} (neither instance side nor class side), since {3} already does'
							format: {subclass. self batchSelector. aMapperClass})].