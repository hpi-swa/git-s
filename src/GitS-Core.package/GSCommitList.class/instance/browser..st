accessing
browser: aBrowser
	browser ifNotNil: [browser removeDependent: self].
	browser := aBrowser.
	browser ifNotNil: [browser addDependent: self].