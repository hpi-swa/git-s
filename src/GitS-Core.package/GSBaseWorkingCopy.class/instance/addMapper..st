mappers
addMapper: aMapper
	self mappers add: (self mapperToAdd: aMapper).
	self mappersChanged.