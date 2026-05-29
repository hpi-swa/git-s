ui
handleKeyStroke: aCharacter withAll: aCollection
	^ aCollection
		detect: [:each | each handlesKeyStroke: aCharacter]
		ifFound: [:each | each run. true]
		ifNone: [false]