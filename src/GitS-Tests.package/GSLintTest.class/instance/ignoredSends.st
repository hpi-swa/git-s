ignored-sends
ignoredSends
	^
		self ignoredSendsForLegacyMetadataLoading,
		self ignoredSendsForLegacyProjectImporting,
		self ignoredSendsForTextDiffing,
		self ignoredSendsForUnmappedPathDialogOptions,
		self ignoredSendsForViewDirectives