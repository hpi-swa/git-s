finding
matcherFor: anObject
	anObject isText ifTrue: [^ self textMatcherFor: anObject].
	anObject isString ifTrue: [^ self stringMatcherFor: anObject].
	anObject isForm ifTrue: [^ self formMatcherFor: anObject].
	(anObject isKindOf: GSEndToEndTestVersion) ifTrue: [^ self matcherFor: anObject label].
	self error: 'Not matchable'.