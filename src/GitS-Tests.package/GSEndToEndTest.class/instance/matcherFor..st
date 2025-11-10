finding
matcherFor: anObject
	anObject isText ifTrue: [^ self textMatcherFor: anObject].
	anObject isString ifTrue: [^ self stringMatcherFor: anObject].
	anObject isForm ifTrue: [^ self formMatcherFor: anObject].
	self error: 'Not matchable'.