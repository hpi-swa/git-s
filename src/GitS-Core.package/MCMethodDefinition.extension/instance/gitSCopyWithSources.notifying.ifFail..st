*GitS-Core-Code
gitSCopyWithSources: aCollection notifying: requestors ifFail: aBlock
	| newCategory newSource sourceRequestor newTimeStamp |
	newCategory := aCollection first.
	newSource := aCollection second.
	sourceRequestor := requestors ifNotNil: #second.
	newTimeStamp := aCollection third.
	newCategory ifEmpty: [^ aBlock value: 'please enter a non-empty method category'].
	self selector = (Parser new parseSelector: newSource) ifFalse: [^ aBlock value: 'expected selector not to change'].
	[Parser new "check syntax"
		parse: newSource
		class: ProtoObject
		noPattern: false
		notifying: sourceRequestor
		ifFail: [^ aBlock value: 'failed to parse the source']]
		on: UndeclaredVariable
		do: [:exception | exception resume: UndeclaredVariableNode new].
	^ MCMethodDefinition
		className: self className
		classIsMeta: self classIsMeta
		selector: self selector
		category: newCategory
		timeStamp: newTimeStamp
		source: newSource