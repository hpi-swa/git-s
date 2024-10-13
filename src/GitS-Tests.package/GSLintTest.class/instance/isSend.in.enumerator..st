testing
isSend: aSymbol in: aCompiledMethod enumerator: aSendsEnumerator
	| parent |
	({self. self class} includes: aCompiledMethod methodClass) ifTrue: [^ false].
	(self ignoredSends includes: aCompiledMethod -> aSymbol) ifTrue: [^ false].
	parent := aSendsEnumerator parent ifNil: [^ true].
	parent isMessageNode ifFalse: [^ true].
	(parent arguments includes: aSendsEnumerator current) ifFalse: [^ true].
	(self selectorsWhoseArgumentsToIgnore includes: parent selector key) ifTrue: [^ false].
	^ true