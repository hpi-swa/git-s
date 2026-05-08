toolbuilder
buildSubtitle: builder
	self subtitle ifNil: [^ nil].
	^ GSGUIUtilities buildShrinkWrapText: self subtitle with: builder