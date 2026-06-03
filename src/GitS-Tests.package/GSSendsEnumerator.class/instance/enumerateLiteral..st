enumerating
enumerateLiteral: anObject
	anObject isSymbol ifTrue: [^ self enumerate: anObject].
	(anObject isCollection and: [anObject isString not]) ifTrue: [
		^ anObject do: [:each | self enumerateLiteral: each]].