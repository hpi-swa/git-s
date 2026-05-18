mappers
removeMapper: aMapper
	self mappers remove: aMapper ifAbsent: [^ self].
	self removeDependent: aMapper.
	self mappersChanged.