finding
isMatchable: anObject
	^ anObject isString or: [anObject isText] or: [anObject isForm] or: [anObject isKindOf: GSEndToEndTestVersion]