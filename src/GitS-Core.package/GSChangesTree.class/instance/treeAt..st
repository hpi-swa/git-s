accessing
treeAt: aString
	| found |
	found := self children at: aString ifAbsentPut: [
		OrderedCollection with: (self newSubtreeNamed: aString)].
	found ifEmpty: [found addFirst: (self newSubtreeNamed: aString)].
	found first isTree ifFalse: [found addFirst: (self newSubtreeNamed: aString)].
	^ found first