commit-list
preserveUnitOfWorkAround: aBlock
	| unitOfWork |
	self activeWorkingCopy ifNil: [^ aBlock]. 
	unitOfWork := self unitOfWork.
	^ [unitOfWork activateDuring: aBlock]