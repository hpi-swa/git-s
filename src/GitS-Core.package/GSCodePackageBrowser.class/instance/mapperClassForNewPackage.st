accessing
mapperClassForNewPackage
	| currentClasses |
	currentClasses := (self mappers collect: #class) asSet.
	currentClasses size = 1 ifTrue: [^ currentClasses anyOne].
	^ self chooseMapperClassFrom: (currentClasses ifEmpty: GSCodeMapper allSubclasses) asArray