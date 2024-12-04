actions
actionChooseNewRepositoryLocation
	self moveToNewRepositoryLocation: (self requestNewRepositoryLocation ifNil: [^ self]).