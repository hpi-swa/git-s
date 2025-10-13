toolbuilder
buildHead
	^ builder pluggableTextSpec new
		model: self;
		getText: #headText;
		verticalResizing: #shrinkWrap;
		yourself