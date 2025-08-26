toolbuilder
buildWith: builder
	^ (GSGUIUtilities buildShrinkWrapText: self description with: builder)
		help: self help;
		readOnly: true;
		yourself