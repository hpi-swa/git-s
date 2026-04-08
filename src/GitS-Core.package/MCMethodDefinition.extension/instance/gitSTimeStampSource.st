*GitS-Core-Code
gitSTimeStampSource
	^ GSMultitextSource new
		string: self timeStamp;
		help: 'time stamp';
		beTimeStamp;
		yourself