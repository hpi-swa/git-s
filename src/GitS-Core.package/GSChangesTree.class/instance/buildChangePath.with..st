toolbuilder
buildChangePath: aChange with: builder
	^ builder pluggableTextSpec new
		model: (GSTextUtilities bold: ((aChange path allButFirst: self depth) joinSeparatedBy: ' > '));
		getText: #yourself;
		readOnly: true;
		indicateUnacceptedChanges: false;
		verticalResizing: #shrinkWrap;
		yourself