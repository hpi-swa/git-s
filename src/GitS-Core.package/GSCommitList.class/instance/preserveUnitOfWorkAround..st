generating
preserveUnitOfWorkAround: aBlock
	| unitOfWork |
	self workingCopyOrNil ifNil: [^ aBlock].
	unitOfWork := self unitOfWork.
	^ [unitOfWork activateDuring: aBlock]