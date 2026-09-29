mappers
removeMapper: aMapper
	self mappers remove: aMapper ifAbsent: [^ self].
	aMapper
		removeDependent: self;
		isTracked: false.
	self mappersChanged.