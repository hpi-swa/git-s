mappers
removeMapper: aMapper
	self mappers remove: aMapper ifAbsent: [^ self].
	self removedMapper: aMapper.
	self mappersChanged.