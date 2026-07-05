toolbuilder
dropDownButtonIcon
	^ ScrollBar
		arrowOfDirection: #bottom
		size: (self userInterfaceTheme get: #font for: PluggableButtonMorph) height
		color: (self userInterfaceTheme get: #textColor for: PluggableButtonMorph)