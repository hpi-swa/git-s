actions-committing
actionCommitDropDown
	| builder menu |
	builder := ToolBuilder default.
	menu := builder pluggableMenuSpec new.
	self commitDropDownMenuSpec: menu.
	builder open: menu.