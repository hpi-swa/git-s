ignored-sends
ignoredSends
	^
		self ignoredSendsForCredentialsDialogOptions,
		self ignoredSendsForLegacyMetadataLoading,
		self ignoredSendsForLegacyProjectImporting,
		self ignoredSendsForTextDiffing,
		self ignoredSendsForUnmappedPathDialogOptions,
		self ignoredSendsForViewDirectives