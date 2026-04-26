toolbuilder
buildDynamic: aSelector label: aString includeResolve: aBoolean with: builder
	^ GSGUIUtilities buildVerticalLayout: {
		GSGUIUtilities buildShrinkWrapText: aString with: builder.
		self buildDynamic: aSelector with: builder.
		aBoolean ifTrue: [
			GSGUIUtilities
				buildButtons: {self buildResolveButton: aSelector with: builder}
				with: builder].
	} with: builder