untracked-mappers
withoutInferredMappers
	self hasInferredMappers ifFalse: [^ self].
	^ self copy
		mappers: self trackedMappers;
		yourself