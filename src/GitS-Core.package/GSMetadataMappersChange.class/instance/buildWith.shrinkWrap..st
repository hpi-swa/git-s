toolbuilder
buildWith: builder shrinkWrap: aBoolean
	^ (GSGUIUtilities buildShrinkWrapText: self description with: builder)
		help: self help;
		readOnly: true;
		yourself