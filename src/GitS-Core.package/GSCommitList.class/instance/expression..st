accessing
expression: aStringOrText
	expression := aStringOrText asString.
	self
		changed: #expression;
		errors: OrderedCollection new;
		block: self compile.