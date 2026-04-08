Autocompletion
isAutocompletionContext: aContext
	^ (aContext findContextSuchThat: [:each |
		each receiver class name = #ECContext
			and: [each selector = #createModel]])
		notNil