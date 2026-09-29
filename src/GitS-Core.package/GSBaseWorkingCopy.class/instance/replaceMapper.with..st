mappers
replaceMapper: aMapper with: anotherMapper
	aMapper
		removeDependent: self;
		isTracked: false.
	self mappers at: (self mappers indexOf: aMapper) put: anotherMapper.
	anotherMapper
		addDependent: self;
		isTracked: true.
	self mappersChanged.