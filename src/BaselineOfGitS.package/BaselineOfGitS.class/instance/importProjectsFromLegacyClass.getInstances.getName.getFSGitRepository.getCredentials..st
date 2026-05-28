migrations
importProjectsFromLegacyClass: aSymbol
getInstances: instancesBlock
getName: nameBlock
getFSGitRepository: repositoryBlock
getCredentials: credentialsBlock
	self
		importProjectsFromLegacyClass: aSymbol
		getInstances: instancesBlock
		getName: nameBlock
		do: [:each |
			(GSGitWorkingCopy
				onFSGitRepository: (repositoryBlock value: each)
				named: (nameBlock value: each))
					credentials: (credentialsBlock value: each);
					register].