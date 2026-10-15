check
isNewVersionAvailableIfError: aBlock
	^ (self latestVersionIfError: [^ aBlock value]) ~= self installedVersion