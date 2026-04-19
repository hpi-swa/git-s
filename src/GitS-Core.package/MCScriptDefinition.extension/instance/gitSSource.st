*GitS-Core-Code
gitSSource
	^ GSMultitextSource new
		string: self source;
		help: 'source';
		beMethodCode;
		yourself