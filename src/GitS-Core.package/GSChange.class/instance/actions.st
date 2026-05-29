actions
actions
	^ GSAction allFromSelectors: #(
		('include' $x toggleExcluded isExcluded)
		('exclude' $x toggleExcluded isIncluded)
		('inspect' $i inspect true)
		('explore' $I explore true)
	) for: self