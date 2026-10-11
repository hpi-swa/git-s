actions-network
actionPullDropDown
	| builder menu |
	builder := ToolBuilder default.
	menu := builder pluggableMenuSpec new.
	self pullDropDownMenuSpec: menu.
	builder open: menu.