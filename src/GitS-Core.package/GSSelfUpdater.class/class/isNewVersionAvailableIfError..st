check
isNewVersionAvailableIfError: aBlock
	^ ([self getShaOfVersion: self branchName] ifError: [^ aBlock value]) ~= self installedVersion