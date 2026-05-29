testing
tryEnsureRepositoryExistsIfFail: aBlock
	self repositoryExists ifTrue: [^ nil].
	(self confirm:
		('{1} Do you want to select a new location?'
			gitSFormat: {self repositoryDoesNotExistInfo}))
		ifTrue: [
			self actionChooseNewRepositoryLocation.
			^ self tryEnsureRepositoryExistsIfFail: aBlock].
	^ aBlock value