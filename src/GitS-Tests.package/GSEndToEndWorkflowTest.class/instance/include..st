dialog
include: anObject
	(anObject isKindOf: GSEndToEndTestVersion) ifFalse: [^ super include: anObject].
	self include: anObject label.