accessing
selectedMapper
	self selectedPath ifNil: [^ nil].
	^ self mappers detect: [:each | each path = self selectedPath] ifNone: [nil]