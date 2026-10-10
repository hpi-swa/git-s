mappers
replaceMapper: aMapper with: anotherMapper
	self mappers at: (self mappers indexOf: aMapper) put: (self mapperToAdd: anotherMapper).
	self
		removedMapper: aMapper;
		mappersChanged.