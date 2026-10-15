change-log
buildChangeLogText: aText with: builder
	^ (GSGUIUtilities buildText: aText with: builder)
		readOnly: true;
		yourself