conversion
source
	^ GSMultitextSource new
		string: self toString;
		help: self help;
		yourself