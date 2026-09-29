changes-operations
batchSerialize: aCollection into: aFileSystem
	| metadataToWrite |
	metadataToWrite := self buildMetadataToWriteFrom: aCollection ifUnchanged: [^ self].
	self new serialize: metadataToWrite into: aFileSystem.