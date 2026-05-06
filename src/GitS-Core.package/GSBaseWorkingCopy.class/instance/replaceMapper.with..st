mappers
replaceMapper: aMapper with: anotherMapper
	aMapper removeDependent: self.
	self mappers at: (self mappers indexOf: aMapper) put: anotherMapper.
	anotherMapper addDependent: self.
	self mappersChanged.