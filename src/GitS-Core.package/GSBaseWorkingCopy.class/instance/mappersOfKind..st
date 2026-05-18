accessing
mappersOfKind: aMapperClass
	^ self allMappers select: [:each | each isKindOf: aMapperClass]