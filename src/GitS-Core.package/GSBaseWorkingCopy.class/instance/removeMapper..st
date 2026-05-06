mappers
removeMapper: aMapper
	self mappers remove: aMapper.
	self removeDependent: aMapper.
	self mappersChanged.