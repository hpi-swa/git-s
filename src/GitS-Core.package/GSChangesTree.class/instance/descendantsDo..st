accessing
descendantsDo: aBlock
	self flatChildren do: [:each |
		each isTree
			ifTrue: [each descendantsDo: aBlock]
			ifFalse: [aBlock value: each]].