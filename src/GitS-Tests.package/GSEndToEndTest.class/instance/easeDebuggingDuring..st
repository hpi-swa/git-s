private
easeDebuggingDuring: aBlock
	Smalltalk isHeadless ifTrue: [^ aBlock value].
	^ aBlock on: Error, TestFailure, Halt do: [:exception |
		[self showWorld.
		self replaceUIManagerWith: UIManager getDefault during: [exception pass]]
			ensure: [self world delete]]