initialize-release
analyze: aString
	| param show |
	((aString includes: $<) and: [aString includes: $>])
		ifTrue: [ | parts |
			parts := TextAction new analyze: aString.
			param := parts first.
			show := parts second]
		ifFalse: [
			show := aString.
			param := UIManager default
				request: ('Heading key for {1}' format: {aString asString printString})
				initialAnswer: (show asString asLowercase
					copyWithRegex: '[^a-z]+'
					matchesReplacedWith: '-')].
	param isEmptyOrNil ifTrue: [^ nil].
	self key: param asSymbol.
	^ show