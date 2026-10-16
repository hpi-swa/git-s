accessing
model: anObject
	self model ifNotNil: [self model removeDependent: self].
	model := anObject.
	self model ifNotNil: [self model addDependent: self].