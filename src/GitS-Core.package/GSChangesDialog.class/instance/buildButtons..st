toolbuilder
buildButtons: builder
	^ GSGUIUtilities buildButtons:
		(self buttons collect: [:each |
			self
				buildButton: each first
				action: each second
				color: each third
				with: builder])
		with: builder