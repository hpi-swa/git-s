*GitS-Core-Code
gitSInstanceSideDefinitionSource
	^ GSMultitextSource new
		string: self definitionString;
		help: 'instance side definition';
		beClassCode;
		yourself