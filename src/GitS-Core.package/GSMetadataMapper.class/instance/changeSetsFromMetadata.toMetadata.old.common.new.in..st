changes-creation
changeSetsFromMetadata: fromMetadata
toMetadata: toMetadata
old: oldBlock
common: commonBlock
new: newBlock
in: aWorkingCopy
	^ self
		changeSetsFromMetadatas: (GSVersionChange current: fromMetadata incoming: toMetadata)
		old: oldBlock
		common: commonBlock
		new: newBlock
		in: aWorkingCopy