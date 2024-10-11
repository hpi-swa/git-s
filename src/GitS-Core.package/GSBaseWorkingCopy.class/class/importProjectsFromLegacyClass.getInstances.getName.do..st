migrations
importProjectsFromLegacyClass: aSymbol
getInstances: instancesBlock
getName: nameBlock
do: doBlock
	(instancesBlock value: ((Smalltalk classNamed: aSymbol) ifNil: [^ self]))
		do: doBlock
		displayingProgress: [:each | 'Registering legacy project {1}'
										format: {(nameBlock value: each) printString}].