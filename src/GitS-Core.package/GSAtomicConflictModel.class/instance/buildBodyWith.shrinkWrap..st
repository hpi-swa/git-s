toolbuilder
buildBodyWith: builder shrinkWrap: aBoolean
	^ GSPreferences showBase
		ifTrue: [self buildBodyWithBaseWith: builder shrinkWrap: aBoolean]
		ifFalse: [self buildBodyWithoutBaseWith: builder shrinkWrap: aBoolean]