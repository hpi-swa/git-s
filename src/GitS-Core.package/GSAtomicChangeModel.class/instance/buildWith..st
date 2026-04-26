toolbuilder
buildWith: builder
	^ GSGUIUtilities buildVerticalLayout: {
		{
			'Current:' -> #current.
			'Incoming:' -> #incoming.
		} gather: [:each | {
			GSGUIUtilities buildShrinkWrapText: each key with: builder.
			self buildDynamic: each value with: builder.
		}].
		self workspace.
	} with: builder