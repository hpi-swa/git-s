applying
basicApplyTo: aMetadataBuilder
	self assert: (aMetadataBuilder mappersToWrite includes: self changedMapper) not.