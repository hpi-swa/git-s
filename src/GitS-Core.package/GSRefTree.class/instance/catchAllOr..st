adding
catchAllOr: aBlock
	^ self findTree: self ref ifFound: [:tree | tree] ifNone: aBlock