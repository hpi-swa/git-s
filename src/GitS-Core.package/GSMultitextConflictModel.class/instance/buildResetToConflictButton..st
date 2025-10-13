toolbuilder
buildResetToConflictButton: builder
	^ builder pluggableActionButtonSpec new
		model: self;
		action: #resetToConflict;
		label: 'Reset to conflict';
		yourself