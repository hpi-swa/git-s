instance creation
unregisteredNameFrom: aString
	(self isNameRegistered: aString) ifFalse: [^ aString].
	^ self requestUnregisteredNameFrom: aString