toolbuilder
buildButtons: aSymbol with: builder
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