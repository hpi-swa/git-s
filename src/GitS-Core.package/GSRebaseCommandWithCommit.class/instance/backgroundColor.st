colors
backgroundColor
	| color |
	color := self userInterfaceTheme get: #color for: #PluggableTextMorph.
	(color notNil and: [color isTranslucent]) ifTrue: [
		color := self userInterfaceTheme get: #color for: #SystemWindow].
	^ color ifNil: [Color white]