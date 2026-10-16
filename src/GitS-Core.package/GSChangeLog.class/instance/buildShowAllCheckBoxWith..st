toolbuilder
buildShowAllCheckBoxWith: builder
	self shouldHaveShowAllCheckBox ifFalse: [^ nil].
	^ builder pluggableCheckBoxSpec new
		model: self;
		state: #shouldShowAllTypes;
		action: #toggleShouldShowAllTypes;
		label: #shouldShowAllLabel;
		verticalResizing: #shrinkWrap;
		yourself