interactions
closeWindowContaining: anObject
	| target window |
	target := self find: anObject.
	window := target morph ownerThatIsA: SystemWindow.
	self assert: window notNil description: 'expected target to be in a window'.
	window delete.