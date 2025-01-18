toolbuilder
buildWindow: builder
	^ builder pluggableWindowSpec new
		model: self;
		label: #windowTitle;
		children: #windowChildren;
		yourself