toolbuilder
buildToggleTrackedButton: builder
	^ builder pluggableActionButtonSpec new
		model: self operationStarter;
		action: #actionToggleTracked;
		label: #toggleTrackedLabel;
		yourself