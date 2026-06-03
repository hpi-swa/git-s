testing
isSend: aSymbol in: aCompiledMethod enumerator: aSendsEnumerator
	| parent |
	({self. self class} includes: aCompiledMethod methodClass) ifTrue: [^ false].
	((self ignoredSendsFor: aCompiledMethod) includes: aSymbol) ifTrue: [^ false].
	parent := aSendsEnumerator parent ifNil: [^ true].
	parent isMessageNode ifFalse: [^ true].
	((parent arguments copyWith: parent receiver) includes: aSendsEnumerator current) ifFalse: [^ true].
	(self selectorsWhoseReceiverAndArgumentsToIgnore includes: parent selector key) ifTrue: [^ false].
	^ true