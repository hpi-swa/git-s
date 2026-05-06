mappers
addMapper: aMapper
	self mappers add: aMapper.
	aMapper addDependent: self.
	self mappersChanged.