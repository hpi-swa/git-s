toolbuilder
buildBody
	^ GSPreferences showBase ifTrue: [self buildBodyWithBase] ifFalse: [self buildBodyWithoutBase]