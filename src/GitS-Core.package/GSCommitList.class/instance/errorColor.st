ui
errorColor
	^ ((self userInterfaceTheme get: #invalid for: SHTextStylerST80)
		ifNil: [^ Color red]) first