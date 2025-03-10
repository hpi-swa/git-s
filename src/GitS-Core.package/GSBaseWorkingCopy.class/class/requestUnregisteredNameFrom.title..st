instance creation
requestUnregisteredNameFrom: aString title: anotherString
	| name |
	name := GSGUIUtilities request: anotherString initialAnswer: aString.
	(self isNameRegistered: name) ifTrue: [
		self inform: 'A project with that name is already registered, pick another.'.
		^ self requestUnregisteredNameFrom: name title: anotherString].
	^ name