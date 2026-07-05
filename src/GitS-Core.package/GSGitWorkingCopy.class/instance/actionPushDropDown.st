actions-network
actionPushDropDown
	| builder menu |
	builder := ToolBuilder default.
	menu := builder pluggableMenuSpec new.
	self pushDropDownMenuSpec: menu.
	builder open: menu.