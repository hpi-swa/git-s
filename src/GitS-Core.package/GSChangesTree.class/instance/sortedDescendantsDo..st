accessing
sortedDescendantsDo: aBlock
	self flatChildrenSorted do: [:each |
		each isTree
			ifTrue: [each sortedDescendantsDo: aBlock]
			ifFalse: [aBlock value: each]].