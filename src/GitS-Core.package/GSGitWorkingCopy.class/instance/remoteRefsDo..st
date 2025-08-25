remotes
remoteRefsDo: aBlock
	self unitOfWork allReferencesPrefixedWith: self remoteRefBaseName do: aBlock.