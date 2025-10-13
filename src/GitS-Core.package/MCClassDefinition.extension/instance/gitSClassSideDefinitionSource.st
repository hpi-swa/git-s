*GitS-Core-Code
gitSClassSideDefinitionSource
	^ GSMultitextSource new
		string: (String streamContents: [:stream | self printClassSideDefinitionOn: stream]);
		help: 'class side definition';
		beCode;
		yourself