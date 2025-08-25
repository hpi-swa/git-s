branches
branchesDo: aBlock
	self unitOfWork allReferencesPrefixedWith: self branchesBaseName do: aBlock.