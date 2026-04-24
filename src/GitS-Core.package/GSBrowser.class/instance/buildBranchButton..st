toolbuilder
buildBranchButton: builder
	^ builder pluggableActionButtonSpec new
		model: self operationStarter;
		action: #actionCreateBranchAtActiveCommitAndOptionallySwitchToIt;
		label: 'Branch';
		help: 'Create a branch at the active commit and optionally switch to it.';
		yourself