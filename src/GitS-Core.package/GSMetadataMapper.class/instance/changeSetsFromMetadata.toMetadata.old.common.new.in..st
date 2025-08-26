changes-creation
changeSetsFromMetadata: fromMetadata
toMetadata: toMetadata
old: oldBlock
common: commonBlock
new: newBlock
in: aWorkingCopy
	| emptyCommit mapperChangeSets removedMappers addedMappers mappersChangeSet metadataChangeSet |
	emptyCommit := aWorkingCopy emptyCommit.
	mapperChangeSets := Dictionary new.
	removedMappers := fromMetadata mappers difference: toMetadata mappers.
	addedMappers := toMetadata mappers difference: fromMetadata mappers.
	
	(removedMappers collect: [:old | old -> [oldBlock value: old value: emptyCommit]]),
	((toMetadata mappers intersection: fromMetadata mappers) collect: [:common | common -> [commonBlock value: common]]),
	(addedMappers collect: [:new | new -> [newBlock value: new value: emptyCommit]])
		do: [:todo | mapperChangeSets at: todo key put: todo value value]
		displayingProgress: [:todo | 'Gathering changes from {1}' format: {todo key}].

	mappersChangeSet := GSMetadataMappersChangeSet new
		oldMappers: fromMetadata mappers;
		mapperChangeSets: mapperChangeSets;
		addChangedMappers: removedMappers class: GSMetadataMappersIncomingRemovalChange;
		addChangedMappers: addedMappers class: GSMetadataMappersIncomingAdditionChange;
		yourself.
	metadataChangeSet := self
		changeSetFromMetadata: fromMetadata
		to: toMetadata
		mappersChangeSet: mappersChangeSet.
	^ mapperChangeSets values copyWith: metadataChangeSet