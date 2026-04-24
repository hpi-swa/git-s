toolbuilder
buildCommitButton: builder
	^ builder pluggableActionButtonSpec new
		model: self operationStarter;
		action: #actionCommit;
		label: 'Commit';
		help: 'Open a dialog to view and select changes, write a commit message and commit.';
		yourself