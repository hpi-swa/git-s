accessing
block: aBlock
	aBlock = self block ifTrue: [^ self].
	self
		basicBlock: aBlock;
		regenerate;
		changed: #clearUserEdits.