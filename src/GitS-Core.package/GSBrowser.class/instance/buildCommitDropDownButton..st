toolbuilder
buildCommitDropDownButton: builder
	^ GSGUIUtilities
		buildButton: (self buildCommitButton: builder)
		withDropDown: (self buildCommitDropDown: builder)
		with: builder