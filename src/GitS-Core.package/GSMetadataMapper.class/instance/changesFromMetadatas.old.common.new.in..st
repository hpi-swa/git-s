changes-creation
changesFromMetadatas: aVersionChange
old: oldBlock
common: commonBlock
new: newBlock
in: aWorkingCopy
	| emptyFSCommit mapperChanges removedMappers addedMappers metadataBuilder |
	emptyFSCommit := aWorkingCopy emptyFSCommit.
	mapperChanges := Dictionary new.
	removedMappers := aVersionChange current mappers difference: aVersionChange incoming mappers.
	addedMappers := aVersionChange incoming mappers difference: aVersionChange current mappers.
	
	(removedMappers collect: [:old | old -> [oldBlock value: old value: emptyFSCommit]]),
	((aVersionChange incoming mappers intersection: aVersionChange current mappers) collect: [:common | common -> [commonBlock value: common]]),
	(addedMappers collect: [:new | new -> [newBlock value: new value: emptyFSCommit]])
		do: [:todo | mapperChanges at: todo key put: todo value value]
		displayingProgress: [:todo | 'Gathering changes from {1}' format: {todo key}].
	
	metadataBuilder := GSMetadataBuilder new
		currentMetadata: aVersionChange current;
		mapperChanges: mapperChanges;
		yourself.
	
	^ OrderedCollection streamContents: [:stream |
		mapperChanges valuesDo: [:each | stream nextPutAll: each].
		stream nextPutAll: (self changesFromNames: (aVersionChange collect: #name)).
		{GSMetadataMappersIncomingRemovalChange. removedMappers.
		GSMetadataMappersIncomingAdditionChange. addedMappers} pairsDo: [:class :mappers |
			stream nextPutAll: (class
				changesFromMappers: mappers
				builder: metadataBuilder
				metadataMapper: self)]]