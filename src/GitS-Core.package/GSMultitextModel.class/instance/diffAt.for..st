accessing
diffAt: aNumber for: aVersionChange
	| strings |
	strings := aVersionChange collect: [:each | (self sourcesOf: each at: aNumber) string withSqueakLineEndings].
	^ ((self textDiffBuilderClassFor: aNumber) from: strings current to: strings incoming)
		buildDisplayPatch