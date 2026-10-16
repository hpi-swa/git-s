mappers
addMapper: aMapper
	| mapperToAdd |
	mapperToAdd := self mapperToAdd: aMapper.
	self mappers add: mapperToAdd.
	self mappersChanged.
	^ mapperToAdd