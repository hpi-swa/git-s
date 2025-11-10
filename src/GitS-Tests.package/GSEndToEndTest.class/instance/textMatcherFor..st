finding
textMatcherFor: aText
	| normalizedText |
	normalizedText := aText withSqueakLineEndings.
	^ [:toMatch |
		toMatch isText and: [| normalizedToMatch |
			normalizedToMatch := toMatch withSqueakLineEndings.
			normalizedToMatch string = normalizedText string and: [normalizedToMatch runs = normalizedText runs]]]