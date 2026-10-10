mappers
mapperToAdd: aMapper
	^ aMapper asTracked
		onAddedTo: self was: aMapper;
		addDependent: self;
		yourself