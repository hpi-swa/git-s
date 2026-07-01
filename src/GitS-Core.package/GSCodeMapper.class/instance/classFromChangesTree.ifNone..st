actions
classFromChangesTree: aChangesTree ifNone: aBlock
	| classLabel |
	(aChangesTree path beginsWith: self path segments) ifFalse: [^ aBlock value].
	aChangesTree path size = (self path size + 2 "package name -> class name") ifFalse: [^ aBlock value].
	classLabel := aChangesTree label.
	^ self lookupChangesTreeClassLabel: classLabel ifAbsent: [^ aBlock value]