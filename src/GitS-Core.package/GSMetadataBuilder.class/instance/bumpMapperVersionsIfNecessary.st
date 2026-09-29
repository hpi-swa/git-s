building
bumpMapperVersionsIfNecessary
	self metadataToWrite mappers:
		(self metadataToWrite mappers
			collect: [:each | self bumpMapperVersionIfNecessary: each]).