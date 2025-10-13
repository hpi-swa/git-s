*GitS-Core-Code
gitSBodySource
	^ GSMultitextSource new
		string: self source;
		help: 'source';
		beCode;
		methodClass: self actualClass;
		yourself