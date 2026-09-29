ui
assetPathLabelFor: aPath
	| name |
	name := aPath basename.
	^ (self assetPathIsInferred: aPath)
		ifTrue: [GSTextUtilities italic: name]
		ifFalse: [name]