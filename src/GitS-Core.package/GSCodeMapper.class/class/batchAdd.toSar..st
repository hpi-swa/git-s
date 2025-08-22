sar
batchAdd: aCollection toSar: aSarBuilder
	| codeMappers stream definitions memberName |
	self = GSCodeMapper ifFalse: [^ aCollection].
	codeMappers := aCollection select: [:each | each isKindOf: self].
	codeMappers ifEmpty: [^ aCollection].
	stream := RWBinaryOrTextStream on: (String new: 10000).
	definitions := Array streamContents: [:definitionsStream |
		codeMappers
			do: [:each | definitionsStream nextPutAll: each workingCopySnapshot definitions]
			displayingProgress: [:each | 'Gathering code from {1}' gitSFormat: {each}]].
	GSGUIUtilities
		displayStatus: 'Serializing code'
		during: [(MCStWriter on: stream) writeDefinitions: definitions].
	memberName := aSarBuilder workingCopy name, '.st'.
	aSarBuilder
		addString: (stream contents convertToEncoding: 'utf8') at: memberName;
		addPreambleLine: ('self fileInMemberNamed: {1}.' gitSFormat: {memberName printString}).
	^ aCollection reject: [:each | each isKindOf: self]