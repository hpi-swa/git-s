toolbuilder
buildRefreshRefTreeButton: builder
	^ builder pluggableActionButtonSpec new
		model: self;
		action: #actionRefreshRefTree;
		label: 'Refresh';
		yourself