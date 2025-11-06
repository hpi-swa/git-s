sar
batchAdd: aCollection toSar: aSarBuilder
	| codeMappers stream definitions memberName |
	self class = thisContext methodClass ifFalse: [^ aCollection].
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
		addPreambleLine: (String streamContents: [:preambleStream |
			preambleStream nextPutAll:
				('self fileInMemberNamed: {1}.\
				(Smalltalk classNamed: #MCPackage) ifNotNil: [:mcPackage |'
					gitSFormat: {memberName printString}).
			codeMappers
				do: [:each | preambleStream cr; tab; nextPutAll:
						('(mcPackage named: {1}) workingCopy modified: false'
							gitSFormat: {each package name printString})]
				separatedBy: [preambleStream nextPut: $.].
			preambleStream nextPutAll: '].']).
	^ aCollection reject: [:each | each isKindOf: self]