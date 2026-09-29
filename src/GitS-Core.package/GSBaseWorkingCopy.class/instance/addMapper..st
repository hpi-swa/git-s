mappers
addMapper: aMapper
	self mappers add: aMapper.
	aMapper
		addDependent: self;
		isTracked: true.
	self mappersChanged.