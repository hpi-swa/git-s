compatibility
canChangeTo: aRebaseCommandClass
	"prevent accidental dropping of commits"
	^ aRebaseCommandClass allInstVarNames includes: 'commit'