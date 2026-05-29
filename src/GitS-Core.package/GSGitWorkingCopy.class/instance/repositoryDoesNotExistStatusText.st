testing
repositoryDoesNotExistStatusText
	self repositoryExists ifTrue: [^ nil].
	^ '{1} {2}' asText format: {
		self repositoryDoesNotExistInfo.
		GSTextUtilities
			onClick: 'Click here to select a new location.'
			do: [self operationStarter ensureActiveOperationDuring: [
					self actionChooseNewRepositoryLocation]]}