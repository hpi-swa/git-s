ignored-sends
ignoredSends
	^
		self ignoredSendsForCredentialsDialogOptions,
		self ignoredSendsForLegacyMetadataLoading,
		self ignoredSendsForLegacyProjectImporting,
		self ignoredSendsForGitStoreMigration,
		self ignoredSendsForMorphProperties,
		self ignoredSendsForSqueakCompatibility,
		self ignoredSendsForTextDiffing,
		self ignoredSendsForUncommittedChangesDialogOptions,
		self ignoredSendsForUnmappedPathDialogOptions,
		self ignoredSendsForViewDirectives