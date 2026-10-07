navigation
findHelpBrowser
	| windows window |
	windows := SystemWindow
		windowsIn: self currentWorld
		satisfying: [:each | each model isKindOf: HelpBrowser].
	window := windows ifNotEmpty: #first ifEmpty: [self open].
	window beKeyWindow.
	^ window model