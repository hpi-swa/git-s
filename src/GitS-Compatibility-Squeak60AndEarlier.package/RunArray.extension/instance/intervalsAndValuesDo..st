*GitS-Compatibility-Squeak60AndEarlier-enumerating-override
intervalsAndValuesDo: aBlock
	"Enumerate the receiver with an absolute representation for each run, which makes it useful for other scenarios compared to #runsAndValuesDo:."

	| index |
	index := 0.
	self runsAndValuesDo: [:run :value |
		aBlock
			value: (index + 1 to: (index := index + run))
			value: value].