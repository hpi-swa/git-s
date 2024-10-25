check
isNewVersionAvailable
	^ ([self getShaOfVersion: self branchName] ifError: [^ false]) ~= self installedVersion