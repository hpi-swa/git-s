changes-operations
buildMetadataToWriteFrom: aCollection ifUnchanged: aBlock
	| metadataBuilder metadataToWrite |
	aCollection ifEmpty: [^ aBlock value].
	metadataBuilder := aCollection anyOne metadataBuilder.
	metadataBuilder start.
	aCollection do: [:each | each applyTo: metadataBuilder].
	metadataToWrite := metadataBuilder finish.
	(metadataToWrite equalsIncludingMapperVersions: metadataBuilder currentMetadata withoutInferredMappers)
		ifTrue: [^ aBlock value].
	^ metadataToWrite