ignored-sends
ignoredSendsForCommitType
	^ {
		#actionPick:message:windowTitlePrefix:revert:amend:alwaysOpenDialog:.
		#mergeCommitIntoHead:mergeBase:message:windowTitle:alwaysOpenDialog:commitType:.
		#openDialogToMergeCommitIntoHead:mergeBase:displayName:.
	} gather: [:selector | #(commit merge amend) collect: [:symbol | GSBrowser>>selector -> symbol]]