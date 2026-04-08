changes-creation
changeSetsFromMetadatas: aVersionChange
old: oldBlock
common: commonBlock
new: newBlock
in: aWorkingCopy
	| emptyCommit mapperChangeSets removedMappers addedMappers mappersChangeSet metadataChangeSet |
	emptyCommit := aWorkingCopy emptyCommit.
	mapperChangeSets := Dictionary new.
	removedMappers := aVersionChange current mappers difference: aVersionChange incoming mappers.
	addedMappers := aVersionChange incoming mappers difference: aVersionChange current mappers.
	
	(removedMappers collect: [:old | old -> [oldBlock value: old value: emptyCommit]]),
	((aVersionChange incoming mappers intersection: aVersionChange current mappers) collect: [:common | common -> [commonBlock value: common]]),
	(addedMappers collect: [:new | new -> [newBlock value: new value: emptyCommit]])
		do: [:todo | mapperChangeSets at: todo key put: todo value value]
		displayingProgress: [:todo | 'Gathering changes from {1}' format: {todo key}].

	mappersChangeSet := GSMetadataMappersChangeSet new
		currentMappers: aVersionChange current mappers;
		mapperChangeSets: mapperChangeSets;
		addChangedMappers: removedMappers class: GSMetadataMappersIncomingRemovalChange;
		addChangedMappers: addedMappers class: GSMetadataMappersIncomingAdditionChange;
		yourself.
	metadataChangeSet := self
		changeSetFromMetadatas: aVersionChange
		mappersChangeSet: mappersChangeSet.
	^ mapperChangeSets values copyWith: metadataChangeSet