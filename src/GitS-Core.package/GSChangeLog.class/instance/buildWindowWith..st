toolbuilder
buildWindowWith: builder
	^ builder pluggableWindowSpec new
		model: self;
		children: {GSGUIUtilities windowChild: (self buildLayoutWith: builder)};
		label: 'Change log for git/s';
		yourself