changes-operations
batchMaterialize: aCollection in: aWorkingCopy
	| metadataToWrite |
	metadataToWrite := self buildMetadataToWriteFrom: aCollection ifUnchanged: [^ self].
	aWorkingCopy metadata: metadataToWrite.