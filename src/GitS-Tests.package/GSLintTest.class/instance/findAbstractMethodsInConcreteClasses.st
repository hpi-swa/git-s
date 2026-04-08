finding
findAbstractMethodsInConcreteClasses
	^ CurrentReadOnlySourceFiles cacheDuring: [ | methodsWithClasses |
		methodsWithClasses := IdentityDictionary new.
		(self packageInfo classesAndMetaClasses
			reject: [:each | each theNonMetaClass isAbstract])
			do: [:class |
				class allSelectors do: [:selector | | compiledMethod |
					compiledMethod := class lookupSelector: selector.
					(methodsWithClasses
						at: compiledMethod
						ifAbsentPut: [OrderedCollection new])
							add: class]].
		(methodsWithClasses associationsSelect: [:each | 
			(self packageInfo includesMethodReference: each key methodReference)
				and: [self isAbstractMethod: each key]])
			sorted: #name ascending]