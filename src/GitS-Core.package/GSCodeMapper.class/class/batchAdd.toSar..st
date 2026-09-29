sar
batchAdd: aCollection toSar: aSarBuilder
	| stream definitions memberName |
	aCollection ifEmpty: [^ self].
	stream := RWBinaryOrTextStream on: (String new: 10000).
	definitions := Array streamContents: [:definitionsStream |
		aCollection
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
			aCollection
				do: [:each | preambleStream cr; tab; nextPutAll:
						('(mcPackage named: {1}) workingCopy modified: false'
							gitSFormat: {each package name printString})]
				separatedBy: [preambleStream nextPut: $.].
			preambleStream nextPutAll: '].']).