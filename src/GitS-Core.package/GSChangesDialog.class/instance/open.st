toolbuilder
open
	| opened |
	opened := ToolBuilder open: self.
	self postOpen.
	^ opened