ignored-sends
ignoredSends
	^
		self ignoredSendsForCredentialsDialogOptions,
		self ignoredSendsForLegacyMetadataLoading,
		self ignoredSendsForLegacyProjectImporting,
		self ignoredSendsForGitStoreMigration,
		self ignoredSendsForTextDiffing,
		self ignoredSendsForUncommittedChangesDialogOptions,
		self ignoredSendsForUnmappedPathDialogOptions,
		self ignoredSendsForViewDirectives