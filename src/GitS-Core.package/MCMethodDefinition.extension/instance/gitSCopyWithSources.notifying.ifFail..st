*GitS-Core-Code
gitSCopyWithSources: aCollection notifying: requestors ifFail: aBlock
	| category source sourceRequestor timeStamp |
	category := aCollection first.
	source := aCollection second.
	sourceRequestor := requestors ifNotNil: #second.
	timeStamp := aCollection third.
	category ifEmpty: [^ aBlock value: 'please enter a non-empty method category'].
	self selector = (Parser new parseSelector: source) ifFalse: [^ aBlock value: 'expected selector not to change'].
	[Parser new "check syntax"
		parse: source
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
		category: category
		timeStamp: timeStamp
		source: source