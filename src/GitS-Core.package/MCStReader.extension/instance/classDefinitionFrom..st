*GitS-Core-Code-override
classDefinitionFrom: aPseudoClass
	| tokens traitCompositionString lastIndex classTraitCompositionString typeOfSubclass className |
	tokens := Scanner new scanTokens: aPseudoClass definition.
	traitCompositionString := ((ReadStream on: aPseudoClass definition)
		match: 'uses:';
		upToAll: 'instanceVariableNames:') withBlanksTrimmed.
	classTraitCompositionString := ((ReadStream on: aPseudoClass metaClass definition asString)
		match: 'uses:';
		upToAll: 'instanceVariableNames:') withBlanksTrimmed.
	traitCompositionString isEmpty ifTrue: [traitCompositionString := '{}'].
	classTraitCompositionString isEmpty ifTrue: [classTraitCompositionString := '{}'].
	lastIndex := tokens size.

	className := tokens at: 3.
	typeOfSubclass := self typeOfSubclass: (tokens at: 2).
	"Compiled code classes are special cases of the #bytes class type"
	(#bytes == typeOfSubclass and: [self compiledCodeClassNames includes: className])
		ifTrue: [typeOfSubclass := #compiledMethod].

	^ MCClassDefinition
		name: className
		superclassName: (tokens at: 1)
		traitComposition: traitCompositionString
		classTraitComposition: classTraitCompositionString
		category: (tokens at: lastIndex) asSymbol
		instVarNames: ((tokens at: lastIndex - 6) findTokens: ' ')
		classVarNames: ((tokens at: lastIndex - 4) findTokens: ' ')
		poolDictionaryNames: ((tokens at: lastIndex - 2) findTokens: ' ')
		classInstVarNames: (self classInstVarNamesFor: aPseudoClass)
		type: typeOfSubclass
		comment: (self commentFor: aPseudoClass)
		commentStamp: (self commentStampFor: aPseudoClass)