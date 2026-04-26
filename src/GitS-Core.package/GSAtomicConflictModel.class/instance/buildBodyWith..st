toolbuilder
buildBodyWith: builder
	^ GSPreferences showBase ifTrue: [self buildBodyWithBaseWith: builder] ifFalse: [self buildBodyWithoutBaseWith: builder]