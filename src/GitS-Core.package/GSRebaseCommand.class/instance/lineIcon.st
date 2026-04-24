icon
lineIcon
	^ self cachedIcon: [:canvas |
		canvas
			line: canvas clipRect topCenter
			to: canvas clipRect bottomCenter
			width: 4
			color: (self userInterfaceTheme get: #textColor for: PluggableListMorph)]