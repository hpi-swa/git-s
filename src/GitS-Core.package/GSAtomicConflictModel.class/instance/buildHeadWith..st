toolbuilder
buildHeadWith: builder
	^ builder pluggableTextSpec new
		model: self;
		getText: #headText;
		verticalResizing: #shrinkWrap;
		yourself