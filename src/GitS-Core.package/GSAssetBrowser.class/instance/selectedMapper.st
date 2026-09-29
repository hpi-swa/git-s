accessing
selectedMapper
	^ self mapperAtPath: (self selectedPath ifNil: [^ nil])