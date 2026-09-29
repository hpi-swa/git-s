building
start
	self metadataToWrite: self currentMetadata copy.
	self metadataToWrite mappers: self metadataToWrite mappers asOrderedCollection.