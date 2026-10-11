toolbuilder
open
	| opened |
	self assert: self hasStarted.
	opened := ToolBuilder open: self.
	self hasOpened: true.
	^ opened