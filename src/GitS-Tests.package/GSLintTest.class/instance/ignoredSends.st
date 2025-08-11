ignored-sends
ignoredSends
	^
		self ignoredSendsForCredentialsDialogOptions,
		self ignoredSendsForLegacyMetadataLoading,
		self ignoredSendsForLegacyProjectImporting,
		self ignoredSendsForGitStoreMigration,
		self ignoredSendsForTextDiffing,
		self ignoredSendsForUnmappedPathDialogOptions,
		self ignoredSendsForViewDirectives