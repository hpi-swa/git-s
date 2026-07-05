actions
actionMore
	| builder menu |
	builder := ToolBuilder default.
	menu := builder pluggableMenuSpec new.
	self moreMenu: menu.
	builder open: menu.