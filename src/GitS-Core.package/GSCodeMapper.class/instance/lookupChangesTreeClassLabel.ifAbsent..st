actions
lookupChangesTreeClassLabel: aString ifAbsent: aBlock
	| className resolve class |
	className := aString.
	resolve := #yourself.
	#(class classSide classTrait)
		detect: [:each | aString endsWith: ' ', each]
		ifFound: [:each |
			className := aString allButLast: (' ', each) size.
			resolve := each].
	class := Smalltalk at: className asSymbol ifAbsent: [^ aBlock value].
	^ class perform: resolve