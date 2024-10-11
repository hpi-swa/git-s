converting
ensureOfClass: aClass ifConverted: aBlock
	self class = aClass ifTrue: [^ self].
	aBlock value: (self as: aClass).