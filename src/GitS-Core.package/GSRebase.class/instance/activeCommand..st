accessing
activeCommand: aRebaseCommand
	(aRebaseCommand isNil or: [aRebaseCommand isHeader])
		ifTrue: [activeCommand := nil]
		ifFalse: [
			self assert: (self commands includes: aRebaseCommand).
			activeCommand := aRebaseCommand].
	self changed: #activeCommand.