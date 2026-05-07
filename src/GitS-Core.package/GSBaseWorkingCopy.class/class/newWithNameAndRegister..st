instance creation
newWithNameAndRegister: aString
	^ (self newWithName: aString)
		register;
		yourself