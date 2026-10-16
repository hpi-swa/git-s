accessing
defaultButtonColor
	"when using a color selector (over a Color or nil), returning nil is not allowed"
	^ (self userInterfaceTheme get: #color for: #PluggableButtonMorph)
		ifNil: [Color gray: 0.91 "copied from PluggableButtonMorph>>#setDefaultParameters"]