check
isNewVersionAvailableIfError: aBlock
	^ ([self getShaOfVersion: self branchName] ifError: [:error |
		Project current transcript showln: ('Error while checking for new version of git/s: {1}' format: {error}).
		^ aBlock value]) ~= self installedVersion