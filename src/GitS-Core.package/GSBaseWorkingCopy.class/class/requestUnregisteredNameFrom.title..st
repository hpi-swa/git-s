instance creation
requestUnregisteredNameFrom: aString title: anotherString
	| result |
	result := GSGUIUtilities request: anotherString initialAnswer: aString.
	(self isNameRegistered: result) ifTrue: [
		self inform: 'A project with that name is already registered, pick another.'.
		^ self requestUnregisteredNameFrom: result title: anotherString].
	^ result