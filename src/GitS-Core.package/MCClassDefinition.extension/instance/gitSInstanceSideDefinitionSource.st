*GitS-Core-Code
gitSInstanceSideDefinitionSource
	^ GSMultitextSource new
		string: self definitionString;
		help: 'instance side definition';
		beCode;
		yourself