*GitS-Core-Code
gitSBodySource
	^ GSMultitextSource new
		string: self source;
		help: 'source';
		beMethodCode;
		methodClass: self actualClass;
		yourself