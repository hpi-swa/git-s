finding
findAbstractMethodsInConcreteClasses
	^ CurrentReadOnlySourceFiles cacheDuring: [
		(Array streamContents: [:stream | | methodsWithClasses |
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
			(methodsWithClasses
				associationsSelect: [:each |
					(self ignoredAbstractMethods includes: each key) not])
				 keysAndValuesDo: [:compiledMethod :classes |
					(self isAbstractMethod: compiledMethod)
						ifTrue: [stream nextPut: compiledMethod -> classes]]])
			sorted: #name ascending]