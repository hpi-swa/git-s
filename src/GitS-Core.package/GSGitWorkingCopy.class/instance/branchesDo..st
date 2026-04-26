branches
branchesDo: aBlock
	self unitOfWork allReferencesPrefixedWith: self branchesDirectory do: aBlock.