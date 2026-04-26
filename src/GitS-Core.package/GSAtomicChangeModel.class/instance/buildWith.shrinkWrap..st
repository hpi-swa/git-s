toolbuilder
buildWith: builder shrinkWrap: aBoolean
	^ GSGUIUtilities buildVerticalLayout: {
		{
			'Current:' -> #current.
			'Incoming:' -> #incoming.
		} gather: [:each | {
			GSGUIUtilities buildShrinkWrapText: each key with: builder.
			self buildDynamic: each value with: builder.
		}].
		self workspace.
	} shrinkWrap: aBoolean with: builder