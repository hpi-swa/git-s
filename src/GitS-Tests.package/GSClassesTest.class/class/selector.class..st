instance creation
selector: aSymbol class: aClass
	^ (self selector: aSymbol)
		classToBeTested: aClass;
		yourself