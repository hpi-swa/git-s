events
commandMenu: aMenu
	self activeCommand ifNotNil: [:command | command menu: aMenu].
	^ aMenu