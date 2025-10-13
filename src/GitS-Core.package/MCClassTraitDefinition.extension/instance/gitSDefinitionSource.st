*GitS-Core-Code
gitSDefinitionSource
	^ GSMultitextSource new
		string: self source;
		help: 'class side definition';
		beCode;
		yourself