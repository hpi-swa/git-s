accessing
model: aMultitextModel
	self model ifNotNil: [self model removeDependent: self].
	model := aMultitextModel.
	self model ifNotNil: [self model addDependent: self].