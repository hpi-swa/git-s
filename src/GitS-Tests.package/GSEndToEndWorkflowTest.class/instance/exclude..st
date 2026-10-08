dialog
exclude: anObject
	(anObject isKindOf: GSEndToEndTestVersion) ifFalse: [^ super exclude: anObject].
	self exclude: anObject label.