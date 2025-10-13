toolbuilder
buildBodyWithBase
	^ GSGUIUtilities buildEvenGrid: {
		{'Base:' -> #base. 'Current:' -> #current. 'Incoming:' -> #incoming} collect: [:each |
			self buildDynamic: each value label: each key].
		self buildResolutionPanel.
	} ofSize: 2 @ 2 with: builder