ignored-sends
ignoredSends
	^
		self ignoredSendsForCommitType,
		self ignoredSendsForLegacyMetadataLoading,
		self ignoredSendsForLegacyProjectImporting,
		self ignoredSendsForTextDiffing,
		self ignoredSendsForUnmappedPathDialogOptions