toolbuilder
headText
	^ 'Conflict ({1})' asText format: {self isResolved ifTrue: ['resolved'] ifFalse: ['unresolved' asText allBold]}