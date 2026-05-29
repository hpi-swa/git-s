actions
actions
	^ super actions, (GSAction allFromSelectors: #(
		('install' nil actionInstall isInstallActionActive)
		('revert' $r actionRevert isRevertActionActive)
		('browse' $b actionBrowse canBrowse)
		('senders' $n actionSenders true)
		('implementors' $m actionImplementors true)
		('references' $N actionReferences true)
		('versions' $v actionBrowseVersions canBrowseVersions)
	) for: self)