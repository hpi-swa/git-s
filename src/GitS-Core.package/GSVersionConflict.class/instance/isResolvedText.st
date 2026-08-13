toolbuilder
isResolvedText
	^ self isResolved ifTrue: ['resolved' asText] ifFalse: ['unresolved' asText allBold]