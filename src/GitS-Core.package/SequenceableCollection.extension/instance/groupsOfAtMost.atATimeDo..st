*GitS-Core-enumerating-override
groupsOfAtMost: n atATimeDo: aBlock 
	"Evaluate aBlock with my elements taken at most n at a time. Leftovers at the end are passed as a smaller array.
	aBlock has to have a single argument, as it is always passed an array of n items (in contrast to groupsOf:atATimeDo:)."
	1 to: self size by: n do: [:index | 
		aBlock value: (self copyFrom: index to: ((index + n - 1) min: self size)) asArray].