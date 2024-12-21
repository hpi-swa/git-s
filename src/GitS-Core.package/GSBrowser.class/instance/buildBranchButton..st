toolbuilder
buildBranchButton: builder
	^ builder pluggableActionButtonSpec new
		model: self operationLifecycle;
		action: #actionCreateBranchAtActiveCommit;
		label: 'Branch';
		help: 'Create a branch at the active commit.';
		yourself