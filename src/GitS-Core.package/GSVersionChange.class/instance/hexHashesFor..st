enumerating
hexHashesFor: aMapper
	^ self collect: [:each | aMapper hexHashIn: each]