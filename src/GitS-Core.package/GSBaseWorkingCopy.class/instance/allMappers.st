accessing
allMappers
	^ (self mappers, (self materialized values collect: #mapper), {self metadataMapper}) withoutDuplicates