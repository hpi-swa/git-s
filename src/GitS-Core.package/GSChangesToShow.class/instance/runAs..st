actions-private
runAs: aClass
	^ (self class = aClass ifTrue: [self] ifFalse: [self as: aClass]) run