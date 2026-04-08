toolbuilder
buildDynamic: aSelector label: aString includeResolve: aBoolean
	^ GSGUIUtilities buildVerticalLayout: {
		GSGUIUtilities buildShrinkWrapText: aString with: builder.
		self buildDynamic: aSelector.
		aBoolean ifTrue: [
			GSGUIUtilities
				buildButtons: {self buildResolveButton: aSelector}
				with: builder].
	} with: builder