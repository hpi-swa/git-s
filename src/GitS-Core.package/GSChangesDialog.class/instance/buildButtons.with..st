toolbuilder
buildButtons: aSymbol with: builder
	(self hasButtons: aSymbol) ifFalse: [^ nil].
	^ GSGUIUtilities buildButtons:
		(self buttons
			select: [:each | each fourth = aSymbol]
			thenCollect: [:each |
				self
					buildButton: each first
					action: each second
					color: each third
					with: builder])
		with: builder