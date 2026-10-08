*GitS-Core-Code
gitSCopyWithSources: aCollection notifying: requestors ifFail: aBlock
	| newInstanceSide newClassSide newComment stString definitions definition |
	newInstanceSide := aCollection first.
	newClassSide := aCollection second.
	newComment := aCollection third.
	stString := (#(
		'!{1}!'
		'!{2}!'
		'!{3} commentStamp: {4}!'
		'{5}!'
	 ) joinSeparatedBy: String cr)
		format: {newInstanceSide. newClassSide. self className. self commentStamp printString. newComment}.
	definitions := (MCStReader on: stString readStream) definitions.
	definitions size = 1 ifFalse: [^ aBlock value: 'expected to parse exactly one class definition'].
	definition := definitions first.
	definition isClassDefinition ifFalse: [^ aBlock value: 'expected to parse a class definition'].
	definition className = self className ifFalse: [^ aBlock value: 'expected the class name not to change'].
	^ definition