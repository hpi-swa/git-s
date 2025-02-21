toolbuilder
buildChangePath: aChange with: builder
	^ builder pluggableStaticTextSpec new
		text: ((aChange path allButFirst: self depth) joinSeparatedBy: ' > ');
		verticalResizing: #shrinkWrap;
		yourself