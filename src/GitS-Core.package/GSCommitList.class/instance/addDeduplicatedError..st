accessing
addDeduplicatedError: aStringOrText
	(self errors anySatisfy: [:each | each asString = aStringOrText asString]) ifTrue: [^ self].
	self addError: aStringOrText.