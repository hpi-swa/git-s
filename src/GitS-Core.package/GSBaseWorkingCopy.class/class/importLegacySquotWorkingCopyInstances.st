migrations
importLegacySquotWorkingCopyInstances
	<ignoreSends: #(SquotWorkingCopy registered)>
	self
		importProjectsFromLegacyClass: #SquotWorkingCopy
		getInstances: #registered
		getName: #name
		getFSGitRepository: [:workingCopy | workingCopy repository fsgitRepository]
		getCredentials: [:workingCopy | (workingCopy repository instVarNamed: 'credentials')
											ifNil: [Dictionary new]]