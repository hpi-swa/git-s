toolbuilder
build
	^ GSGUIUtilities buildVerticalLayout: {
		{
			'Current:' -> #current.
			'Incoming:' -> #incoming.
		} gather: [:each | {
			GSGUIUtilities buildShrinkWrapText: each key with: self builder.
			self buildDynamic: each value.
		}].
		self workspace.
	} with: builder