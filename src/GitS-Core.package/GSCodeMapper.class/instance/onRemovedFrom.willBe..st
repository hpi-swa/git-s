working-copy
onRemovedFrom: aWorkingCopy willBe: aMapper
	(aWorkingCopy mappers anySatisfy: [:each | each isKindOf: thisContext methodClass]) ifTrue: [^ self].
	thisContext methodClass removeDependent: aWorkingCopy.