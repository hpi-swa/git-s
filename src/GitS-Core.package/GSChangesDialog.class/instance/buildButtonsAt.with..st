toolbuilder
buildButtonsAt: aSymbol with: builder
	(self hasButtonsAt: aSymbol) ifFalse: [^ nil].
	^ GSGUIUtilities
		buildButtons: ((self buttonBuilders at: aSymbol) collect: [:each | each value: builder])
		with: builder