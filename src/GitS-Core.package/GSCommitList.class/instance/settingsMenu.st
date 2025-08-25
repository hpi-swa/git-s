menu
settingsMenu
	| menu |
	menu := GSUpdatingMenuMorph new updater: self updateSelector: #settingsMenu:.
	self settingsMenu: menu.
	menu popUpInWorld.