toolbuilder
buildTextWith: builder
	^ builder pluggableTextSpec new
		model: self;
		getText: #text;
		readOnly: true;
		yourself