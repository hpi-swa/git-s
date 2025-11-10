finding
stringMatcherFor: aString
	| normalizedString |
	normalizedString := aString withSqueakLineEndings.
	^ [:label | (label isString or: [label isText]) and: [normalizedString match: label asString withSqueakLineEndings]]