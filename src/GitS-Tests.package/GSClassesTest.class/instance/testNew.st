tests
testNew
	self classToBeTested isAbstract ifTrue: [^ self].
	super testNew.