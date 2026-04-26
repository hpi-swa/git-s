toolbuilder
buildWith: builder shrinkWrap: aBoolean
	^ GSGUIUtilities buildVerticalLayout: {
		self buildTexts: builder.
		self isEditable ifTrue: [self buildEditButton: builder].
	} shrinkWrap: aBoolean with: builder