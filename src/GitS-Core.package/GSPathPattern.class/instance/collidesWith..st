testing
collidesWith: aPathPattern
	(self allowsLeading or: [aPathPattern allowsLeading])
		ifTrue: ["ignore these for now, currently only used to catch .squot-contents" ^ false].
	1 to: (self path size clampHigh: aPathPattern path size) do: [:index |
		(self path at: index) = (aPathPattern path at: index) ifFalse: [^ false]].
	^ true