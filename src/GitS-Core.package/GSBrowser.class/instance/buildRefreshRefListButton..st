toolbuilder
buildRefreshRefListButton: builder
	^ builder pluggableActionButtonSpec new
		model: self;
		action: #actionRefreshRefList;
		label: 'Refresh';
		yourself