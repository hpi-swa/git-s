toolbuilder
open
	| built |
	"open: only returns after the dialog is closed,
	so build it first to run postOpen at the right time"
	built := ToolBuilder build: self.
	self postOpen.
	ToolBuilder open: built.