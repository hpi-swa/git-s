accessing
contents
	^ self item sortedCompressedChildren collect: [:each | self class with: each model: self model]