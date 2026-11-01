toolbuilder
buildOkButton: builder
	^ builder pluggableActionButtonSpec new
		model: self;
		action: #accept;
		label: 'Ok';
		color: #okColor;
		yourself