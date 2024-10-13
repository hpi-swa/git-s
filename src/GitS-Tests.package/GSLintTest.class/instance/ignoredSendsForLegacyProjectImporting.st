ignored-sends
ignoredSendsForLegacyProjectImporting
	^ {
		#importLegacyGitStandaloneAssetLoaderInstances -> #(GitNamedAssetLoader assets).
		#importLegacySquotWorkingCopyInstances -> #(SquotWorkingCopy registered).
		#importLegacySqueakWorkingCopyInstances -> #(SqueakWorkingCopy).
	} gather: [:each | each value collect: [:symbol | GSBaseWorkingCopy class>>each key -> symbol]]