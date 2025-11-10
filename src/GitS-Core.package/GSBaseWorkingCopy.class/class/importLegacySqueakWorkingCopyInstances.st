migrations
importLegacySqueakWorkingCopyInstances
	<ignoreSends: #(SqueakWorkingCopy)>
	self
		importProjectsFromLegacyClass: #SqueakWorkingCopy
		getInstances: [:class | class registry values]
		getName: #name
		getFSGitRepository: #fsgitRepository
		getCredentials: #credentials